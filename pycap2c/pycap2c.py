from scapy.all import *
from scapy.all import rdpcap

def findLayers(pkt):
    layers = []
    counter = 0
    while True:
        layer = pkt.getlayer(counter)
        if layer != None:
            layers.append(layer.name)
        else:
            break
        counter += 1
    return layers

def getFirstSourceIPAddress(pkts):
    """
        Return the source address for the first TCP packet.

        Assuming all captures start by UE sending a request, the first
        TCP packet is Uplink so the IP.src is the UE IP.
    """
    for pkt in pkts:
        for layer in findLayers(pkt):
            if layer == 'TCP':
                return pkt[IP].src

def changeAddresses(pkts, capture_ue_ip, desired_ue_ip, desired_uplink_dst_ip):
    """
        For every TCP Packet:

        Substitute capture UE src IP for the desired one.
        When packet src not from UE then is downlink so it comes from
        uplink_ip, therefore desired uplink IP is set.

        Similar process is done for the dst IP field.
    """
    for pkt in pkts:
        for layer in findLayers(pkt):
            if layer == 'TCP':
                if pkt[IP].src == capture_ue_ip:
                    pkt[IP].src = desired_ue_ip
                else:
                    pkt[IP].src = desired_uplink_dst_ip

                if pkt[IP].dst == capture_ue_ip:
                    pkt[IP].dst = desired_ue_ip
                else:
                    pkt[IP].dst = desired_uplink_dst_ip

                # Force checksum recalculation
                del pkt[IP].chksum
                del pkt[TCP].chksum

def main():
    pkts = rdpcap('sample.pcap')

    ue_ip = getFirstSourceIPAddress(pkts)
    print(f'UE IP Addr: {ue_ip}')

    changeAddresses(pkts, '192.168.2.142', '106.0.0.1', '172.16.0.1')

    wrpcap('out.pcap', list(pkts))

if __name__ == "__main__":
    main()
