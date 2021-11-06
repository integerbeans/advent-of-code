with open('input.txt','r') as santa:
      [print("🎄",len(l.split('('))-len(l.split(')'))) for l in santa]
