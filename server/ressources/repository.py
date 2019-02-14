from flask_restful import Resource, reqparse


# We save our data in a python list, for simplicity
repositories = [

    {
        "Index": "SOC-LAB-IOT",
        "Title": "IOT Image Processing",
        "Version": "001",
        "Description": "",
        "Changelog": ["3.11.2018 Primary release", "4.11.2018 Bug fixing"],
        "File": "filter_0_0_1.txt",
        "Date": "4.11.2018",
        "Checksum": ""
    },

    {
        "Index": "00001",
        "Title": "foo",
        "Version": "002",
        "Description": "",
        "Changelog": ["", ""],
        "File": "",
        "Date": "",
        "Checksum": ""
    }
]


class Repository(Resource):
    def get(self, index):
        for repo in repositories:
            if index == repo["Index"]:
                return repo, 200
            else:
                return "Repository not found", 404

    def post(self, index):
        parser = reqparse.RequestParser()
        parser.add_argument("Title")
        parser.add_argument("Version")
        parser.add_argument("Description")
        parser.add_argument("Changelog")
        parser.add_argument("File")
        parser.add_argument("Date")
        parser.add_argument("Checksum")
        args = parser.parse_args()

        for repo in repositories:
            if index == repo["Index"]:
                return "Repository with index {} already exists".format(index), 400

        repo = {
            "Index": index,
            "Title": args["Title"],
            "Version": args["Version"],
            "Description": args["Description"],
            "Changelog": [args["Changelog"]],
            "File": args["File"],
            "Date": args["Date"],
            "Checksum": args["Checksum"]
        }

        repositories.append(repo)
        return repo, 201

    def put(self, index):
        parser = reqparse.RequestParser()
        parser.add_argument("Title")
        parser.add_argument("Version")
        parser.add_argument("Description")
        parser.add_argument("Changelog")
        parser.add_argument("File")
        parser.add_argument("Date")
        parser.add_argument("Checksum")
        args = parser.parse_args()

        for repo in repositories:
            if index == repo["Index"]:
                if args["Title"] is not None:
                    repo["Title"] = args["Title"]
                if args["Version"] is not None:
                    repo["Version"] = args["Version"]
                if args["Description"] is not None:
                    repo["Description"] = args["Description"]
                if args["Changelog"] is not None:
                    repo["Changelog"].append(args["Changelog"])
                if args["File"] is not None:
                    repo["File"] = args["File"]
                if args["Date"] is not None:
                    repo["Date"] = args["Date"]
                if args["Checksum"] is not None:
                    repo["Checksum"] = args["Checksum"]

                return repo, 200

        repo = {
            "Index": index,
            "Title": args["Title"],
            "Version": args["Version"],
            "Description": args["Description"],
            "Changelog": [args["Changelog"]],
            "File": args["File"],
            "Date": args["Date"],
            "Checksum": args["Checksum"]
        }

        repositories.append(repo)
        return repo, 201

    def delete(self, index):
        for repo in repositories:
            if index == repo["Index"]:
                repositories.remove(repo)
                return "Repository {} is deleted".format(index), 200
