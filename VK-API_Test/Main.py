import os
import shutil
import time

def scan_tests():
    test_list = []
    with os.scandir("Test_suites/") as it:
        for entry in it:
            if not entry.name.startswith('.') and entry.is_file():
                test_list.append(entry.name)
    return test_list

def start_test_cases():
    test_list = scan_tests()
    os.chdir("Test_suites/")
    for i in test_list:
        os.system('robot ' + str(i))
        create_dir(str(i))
        move_logs(str(i))
        time.sleep(1)


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