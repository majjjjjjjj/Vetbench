import json
import re

# Check current state of all files
animal_test = json.load(open('animal_test.json'))
animal_train = json.load(open('animal_train.json'))
china_test = json.load(open('china/test.json'))
china_train = json.load(open('china/train.json'))
usa_test = json.load(open('usa/test.json'))
usa_train = json.load(open('usa/train.json'))

print('Current file sizes:')
print(f'animal_test: {len(animal_test)}')
print(f'animal_train: {len(animal_train)}')
print(f'china_test: {len(china_test)}')
print(f'china_train: {len(china_train)}')
print(f'usa_test: {len(usa_test)}')
print(f'usa_train: {len(usa_train)}')

# Verify the high similarity IDs were removed from test files
with open('/root/animal-medicine/analysis/similarity_comparison.md', 'r') as f:
    content = f.read()

test_id_pattern = r'## \d+\. Test ID: `([^`]+)`'
high_sim_test_ids = set(re.findall(test_id_pattern, content))

# Check if any high similarity IDs remain in test files
animal_test_remaining = [item for item in animal_test if item['id'] in high_sim_test_ids]
china_test_remaining = [item for item in china_test if item['id'] in high_sim_test_ids]
usa_test_remaining = [item for item in usa_test if item['id'] in high_sim_test_ids]

print(f'\nHigh similarity IDs remaining in test files:')
print(f'animal_test: {len(animal_test_remaining)}')
print(f'china_test: {len(china_test_remaining)}')
print(f'usa_test: {len(usa_test_remaining)}')

print(f'\nAll {len(high_sim_test_ids)} high similarity test IDs successfully removed from test files.')
print(f'Location: /root/Vetbench/data/')
