import re
f = open('./_posts/2019-12-12-other.md', 'r')

for l in f.readlines():
    matches = re.findall('http.*(?=)', str(l)) # http.*(?=\. JCR)
    if len(matches):
        if matches[0].find('(') == -1:
            l = l.replace(matches[0], '[{0}]({0})'.format(matches[0]))
    print(l)
f.close()