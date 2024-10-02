import hashlib

def generate_sha256_hash(data):
    # স্ট্রিংকে বাইটে রূপান্তর করে SHA-256 হ্যাশ জেনারেট করা
    return hashlib.sha256(data.encode()).hexdigest()

# প্রথম ডেটা ইনপুট নেওয়া
data1 = input("Enter first data: ")

# দ্বিতীয় ডেটা ইনপুট নেওয়া
data2 = input("Enter second data: ")

# প্রথম ডেটার হ্যাশ জেনারেট করা
hash1 = generate_sha256_hash(data1)

# দ্বিতীয় ডেটার হ্যাশ জেনারেট করা
hash2 = generate_sha256_hash(data2)

# হ্যাশগুলো মেলানো
if hash1 == hash2:
    print("The hashes match!")
else:
    print("The hashes do not match!")
