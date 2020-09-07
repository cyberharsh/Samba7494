FROM vulnerables/cve-2017-7494

# Expose the samba to the network
EXPOSE 137/udp 138/udp 139 445

# flag added
ADD flagA /etc/

ENTRYPOINT ["/usr/local/samba/sbin/smbd"]
CMD ["-F","-S","-s","/smb.conf","--debuglevel=10"]
