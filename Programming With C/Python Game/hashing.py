import hashlib

def generate_sha256_hash(data):
    # স্ট্রিংকে বাইটে রূপান্তর করে SHA-256 হ্যাশ জেনারেট করা
    hash_object = hashlib.sha256(data.encode())
    # হ্যাশের হেক্সাডেসিমাল রূপে আউটপুট নেওয়া
    return hash_object.hexdigest()

# ইউজারের ইনপুট নেওয়া
input_data = input("Enter data to hash: ")

# হ্যাশ জেনারেট করা
hash_value = generate_sha256_hash(input_data)

# হ্যাশ প্রিন্ট করা
print("SHA-256 Hash:", hash_value)
