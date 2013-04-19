import os


def simulation(parampath):
    ns = {}
    execfile(parampath, ns)
    resultpath = os.path.join('Data', ns['sumatra_label'], 'result.txt')
    with open(resultpath, 'w') as fd:
        fd.write('result')


def main(args=None):
    import argparse
    parser = argparse.ArgumentParser(
        formatter_class=argparse.RawDescriptionHelpFormatter,
        description=__doc__)
    parser.add_argument('parampath')
    ns = parser.parse_args(args)
    simulation(**vars(ns))


if __name__ == '__main__':
    main()
