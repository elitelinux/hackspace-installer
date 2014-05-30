cd /usr/local
sudo apt-get install git-core
git clone https://github.com/instructure/canvas-lms.git canvas
cd canvas
git checkout --track -b stable origin/stable
