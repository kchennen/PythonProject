# -*- coding: utf-8 -*-

def main(name):
    if not len(name):
        name = 'World'
    else:
        name = name[0]

    result = 'Hello, {name}!'.format(name=name)
    print(result)
    return result
