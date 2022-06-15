#Retreiving a data key from metadata of an instance (Prereqs:- Python 3.7 to 3.11)
#Step.1 Use pip to install ec2_metadata


import json 

from ec2_metadata import ec2_metadata

json_data=[{"instanceID": ec2_metadata.instance_id  , "region":ec2_metadata.region}]

json_object = json.loads(json_data)
print(json.dumps(json_object, indent = 3))
