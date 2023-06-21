import os 
import sys

walk_dir = sys.argv[1]

print('walk_dir = ' + walk_dir)
print('walk_dir (absolute) = ' + os.path.abspath(walk_dir))

walk_dir = os.path.abspath(walk_dir)

for root, subdirs, files in os.walk(walk_dir):
    for f in files:
        #print(os.path.join(root, f))
        rf = os.path.join(root,f)
        with open(rf, 'r') as of:
            content = of.read()
