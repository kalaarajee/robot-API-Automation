#  test with  Arguments and return value
import os


def create_folder(foldername):
    os.mkdir("F:\\"+foldername)

def create_sub_folder(subfoldername):
    os.mkdir("F:\\TesingWorldIraq\\"+subfoldername)

def concatenate_two_value(val1,val2):
     val3 = val1 + " " + val2
     return val3


# first test with  Arguments with no return value
# import os
#
#
# def create_folder(foldername):
#     os.mkdir("F:\\" + foldername)
#
#
# def create_sub_folder(subfoldername):
#     os.mkdir("F:\\TesingWorldIraq\\" + subfoldername)


# # first test with no Arguments
# import os
#
#
# def create_folder():
#     os.mkdir("F:\\TestingWorldIraq")
#
# def create_sub_folder():
#     os.mkdir("F:\\TestingWorldIraq\kadhim")


