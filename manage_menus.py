import re
import toml
import argparse

def main(args):
    with open(args.menu_path, "r") as f:
        menu = toml.load(f)

    with open(args.params_path, "r") as f:
        params = toml.load(f)

    target_menus = []

    if args.cur_date not in [item.get('name') for item in menu['main']]:
        menu['main'].append({
            "name": args.cur_date,
            "pageRef": args.cur_date,
            "weight": 20
        })

    for item in menu['main']:
        if 'name' in item:
            if re.match(r'^\d{4}-\d{2}-\d{2}$', item['name']):
                target_menus.append(item)

    target_menus = sorted(target_menus, key=lambda item: item['name'])

    for target_menu in target_menus[:-2]:
        menu['main'].remove(target_menu)

    print(menu['main'])

    with open(args.menu_path, "w") as f:
        toml.dump(menu, f)

    ## update params.toml
    params['mainSections'] = [args.cur_date]
    with open(args.params_path, "w") as f:
        toml.dump(params, f)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--cur-date", type=str, required=True)
    parser.add_argument("--menu-path", type=str, default="./config/_default/menus.en.toml")
    parser.add_argument("--params-path", type=str, default="./config/_default/params.toml")
    args = parser.parse_args()
    main(args)