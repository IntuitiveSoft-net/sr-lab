$TTL    604800
@       IN      SOA     ns1.sr-lab.com. root.sr-lab.com. (
                  3       ; Serial
             604800     ; Refresh
              86400     ; Retry
            2419200     ; Expire
             604800 )   ; Negative Cache TTL
;
; name servers - NS records
     IN      NS      ns1.sr-lab.com.

; name servers - A records
ns1.sr-lab.com.          IN      A      172.28.0.253



xrd-1.        IN      A      1.1.1.1
xrd-1-GigabitEthernet0/0/0/0    IN  A   100.1.3.1
xrd-1-GigabitEthernet0/0/0/1    IN  A   100.1.5.1
xrd-2.        IN      A      2.2.2.2
xrd-2-GigabitEthernet0/0/0/0    IN  A   100.1.4.2
xrd-2-GigabitEthernet0/0/0/1    IN  A   100.1.6.2
xrd-3.        IN      A      3.3.3.3
xrd-4.        IN      A      4.4.4.4
xrd-5.        IN      A      5.5.5.5
xrd-6.        IN      A      6.6.6.6
xrd-7.        IN      A      7.7.7.7