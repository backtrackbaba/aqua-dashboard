import pathlib
import os.path


print("Creating Directory ..")

# Get the file path where the file is stored 
path = pathlib.Path(__file__).parent.absolute()
#user = str(path).split("home/",1)
user = str(os.path.expanduser("~")).split("home/",1)[1]

print("Found User Path--> " + user)

script = open("dashboard.service","a")

script.write("[unit]\n")
script.write('Description="Dashboard"\n\n')
script.write('[Service]\n')
script.write('Type=simple\n\n')
script.writelines(['User=',user,'\n'])
script.writelines(['Group=',user,'\n\n'])
script.write('ExecStart=')
script.write(str(path) + '/start-dash.sh\n\n')
script.writelines(['[Install]\n','WantedBy=multi-user.target'])
script.close()
print("Done")
