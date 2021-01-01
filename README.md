# Terraform - AWS - Infrastructure for Rancher

This project creates the necessary infrastructure in AWS for a Rancher installation.

Once complete you should be able to browse to your domain, in my case https://rancher.morsley.io, and be presented with the default page.

The following command:

```
curl http://rancher.morsley.io
```

Should yield:

```
default backend - 404
```

This now needs Rancher installing via: https://github.com/john-morsley/terraform-aws-install-rancher