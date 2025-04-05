# coding: utf-8
# Your code here!

def get_full_name(first_name: str, last_name: str):
    full_name = first_name.title() + "" + last_name.title()
    return full_name


print(get_full_name("jnede", "doe"))
