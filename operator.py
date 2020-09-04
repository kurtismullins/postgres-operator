import time

from kubernetes import client, config


#config.load_kube_config()
config.load_incluster_config()

if __name__ == '__main__':

    while True:

        v1 = client.CoreV1Api()
        print("Listing Pods")
        pods = v1.list_pod_for_all_namespaces(watch=False)
        for p in pods:
            print("Pod Name: %s\tNamespace: %s" % (pod.metadata.name, pod.metadata.namespace))

        time.sleep(120)
