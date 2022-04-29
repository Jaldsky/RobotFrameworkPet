import os
import shutil


def start_test_cases(): # доделать
    os.chdir("Test_cases/")
    os.system(r'robot aviability_auth.robot')
    create_dir("aviability_auth")
    move_logs("aviability_auth")

def create_dir(test_name):
    path = '../Results/logs/' + test_name

    if os.path.isdir(path):
        shutil.rmtree(path)
        os.mkdir(path)
    else:
        os.mkdir(path)

def move_logs(test_name):
    path_log = '../Results/logs/' + test_name +'/log.html'
    path_output = '../Results/logs/' + test_name +'/output.xml'
    path_report = '../Results/logs/' + test_name +'/report.html'

    if os.path.isfile(path_log) and os.path.isfile(path_output) and os.path.isfile(path_report):
        os.remove(path_log)
        os.remove(path_output)
        os.remove(path_report)

        os.rename(r'log.html', path_log)
        os.rename(r'output.xml', path_output)
        os.rename(r'report.html', path_report)
    else:
        os.rename(r'log.html', path_log)
        os.rename(r'output.xml', path_output)
        os.rename(r'report.html', path_report)



if __name__ == "__main__":
    start_test_cases()

    # path = "/home/User/Desktop/file.txt"
    # start = "/home/User/"
    # x = os.path.relpath(path, start)
    # z = os.getcwd()
    # y = os.chdir("Test_cases/")
    # z2 = os.getcwd()
    #
    #
    #
    # os.system( r'robot aviability_auth.robot')
    #
    # print(x)
    # print(z)
    # print(y)
    # print(z2)


