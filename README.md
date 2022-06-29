# rpm и репозитарий
*добавлен файл лога действий rpm.log*

### Ссылки на софт
```
wget https://nginx.org/packages/rhel/8/SRPMS/nginx-1.16.1-1.el8.ngx.src.rpm
wget https://www.openssl.org/source/openssl-1.1.1p.tar.gz
wget http://elrepo.reloumirrors.net/elrepo/el8/x86_64/RPMS/kmod-wireguard-1.0.20211208-2.el8_6.elrepo.x86_64.rpm
wget http://rpmfind.net/linux/centos/8-stream/AppStream/x86_64/os/Packages/mc-4.8.19-9.el8.x86_64.rpm
```

## bash_history
 wget https://nginx.org/packages/rhel/8/SRPMS/nginx-1.16.1-1.el8.ngx.src.rpm
    2  rpm -i nginx-1.14.1-1.el7_4.ngx.src.rpm
    3  rpm -i nginx-1.16.1-1.el8.ngx.src.rpm
    4  wget https://www.openssl.org/source/openssl-1.1.1p.tar.gz
    5  tar -xvf openssl-1.1.1p.tar.gz
    6  yum-builddep rpmbuild/SPECS/nginx.spec
    7  nano rpmbuild/SPECS/nginx.spec
    8  rpmbuild -bb rpmbuild/SPECS/nginx.spec
    9     exit
   10  ll
   11  ll rpmbuild/RPMS/x86_64/nginx-1.16.1-1.el8.ngx.x86_64.rpm
   12  yum localinstall -y rpmbuild/RPMS/x86_64/nginx-1.16.1-1.el8.ngx.x86_64.rpm
   13  sysctl status nginx
   14  systemctl status nginx
   15  systemctl start nginx
   16  systemctl status nginx
   17   mkdir /usr/share/nginx/html/repo
   18  cd /usr/share/nginx/html/repo
   19  cp ~/rpmbuild/RPMS/x86_64/nginx-1.16.1-1.el8.ngx.x86_64.rpm .
   20  ll
   21  wget http://elrepo.reloumirrors.net/elrepo/el8/x86_64/RPMS/kmod-wireguard-1.0.20211208-2.el8_6.elrepo.x86_64.rpm
   22  ll
   23  createrepo .
   24  nano /etc/nginx/conf.d/default.conf
   25  nginx -t
   26  nginx -s reload
   27   curl -a http://localhost/repo/
   28  cat >> /etc/yum.repos.d/otus.repo << EOF
[otus]
name=otus-linux
baseurl=http://localhost/repo
gpgcheck=0
enabled=1
EOF

   29  yum repolist enabled | grep otus
   30  yum list | grep otus
   31  yum list --show-duplicates | grep otus
   32  yum list --showduplicates | grep otus
   33  yum list --showduplicates
   34  yum list --showduplicates | grep nginx
   35  yum list | grep otus
   36  yum install kmod-wireguard
   37  wget http://vault.centos.org/8-stream/AppStream/Source/SPackages/mc-4.8.19-9.el8.src.rpm
   38   curl -a http://localhost/repo/
   39  createrepo .
   40  yum list | grep otus
   41  wget http://rpmfind.net/linux/centos/8-stream/AppStream/x86_64/os/Packages/mc-4.8.19-9.el8.x86_64.rpm
   42  createrepo .
   43  yum list | grep otus
   44  yup update
   45  yum update
   46  yum list | grep otus
   47  yum clean all
   48  yum list | grep otus
   49  yum install mc
   50  yum list --showduplicates | grep mc

