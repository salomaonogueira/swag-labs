from ruamel.yaml import YAML

def load_yaml(file_path):
    yaml = YAML()
    with open(file_path, "r", encoding="utf-8") as f:
        return yaml.load(f)
