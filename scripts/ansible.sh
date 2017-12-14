mkdir -p /tmp/bootstrap/gentoo-ansible
cd /tmp/bootstrap
wget https://github.com/pypa/virtualenv/archive/15.1.0.tar.gz -O /tmp/bootstrap/virtualenv.tar.gz
tar xfvz virtualenv.tar.gz
python /tmp/bootstrap/virtualenv*/virtualenv.py -p $(which python2) ansible
source ansible/bin/activate
pip install --upgrade pip ansible
echo ansible installed
