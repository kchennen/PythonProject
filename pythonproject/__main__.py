# -*- coding: utf-8 -*-

def main(name='World'):
    result = 'Hello, {name}!'.format(name=name)
    print(result)
    return result


if __name__ == '__main__':
    main()
