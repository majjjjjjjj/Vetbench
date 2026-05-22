import json
import re

# Extract the 100 high similarity test IDs from the similarity_comparison.md file
with open('/root/animal-medicine/analysis/similarity_comparison.md', 'r') as f:
    content = f.read()

# Extract test IDs using regex
test_id_pattern = r'## \d+\. Test ID: `([^`]+)`'
high_sim_test_ids = set(re.findall(test_id_pattern, content))

print(f'Found {len(high_sim_test_ids)} high similarity test IDs')
print('Sample IDs:', list(high_sim_test_ids)[:5])

# Load current test data
test_data = json.load(open('animal_test.json'))
print(f'Current test data: {len(test_data)} questions')

# Remove high similarity items
test_dedup = [item for item in test_data if item['id'] not in high_sim_test_ids]

print(f'After removing high similarity items: {len(test_dedup)} questions')
print(f'Removed: {len(test_data) - len(test_dedup)} questions')

# Save deduplicated test set
json.dump(test_dedup, open('animal_test.json', 'w', encoding='utf-8'), ensure_ascii=False, indent=2)
print('Deduplicated test set saved to animal_test.json')

# Also update china/test.json and usa/test.json
china_test = json.load(open('china/test.json'))
usa_test = json.load(open('usa/test.json'))

china_test_dedup = [item for item in china_test if item['id'] not in high_sim_test_ids]
usa_test_dedup = [item for item in usa_test if item['id'] not in high_sim_test_ids]

print(f'\nChina test: {len(china_test)} -> {len(china_test_dedup)} (removed {len(china_test) - len(china_test_dedup)})')
print(f'USA test: {len(usa_test)} -> {len(usa_test_dedup)} (removed {len(usa_test) - len(usa_test_dedup)})')

json.dump(china_test_dedup, open('china/test.json', 'w', encoding='utf-8'), ensure_ascii=False, indent=2)
json.dump(usa_test_dedup, open('usa/test.json', 'w', encoding='utf-8'), ensure_ascii=False, indent=2)

print('All test files updated and saved.')
