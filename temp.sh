{
    "apiVersion": "v1",
    "items": [
        {
            "apiVersion": "v1",
            "kind": "Pod",
            "metadata": {
                "creationTimestamp": "2022-12-23T09:36:45Z",
                "generateName": "queue-",
                "labels": {
                    "app": "work-queue",
                    "chapter": "jobs",
                    "component": "queue"
                },
                "name": "queue-l4dv8",
                "namespace": "default",
                "ownerReferences": [
                    {
                        "apiVersion": "apps/v1",
                        "blockOwnerDeletion": true,
                        "controller": true,
                        "kind": "ReplicaSet",
                        "name": "queue",
                        "uid": "22a5a8be-7cee-42cd-a6c3-02b620f4ce88"
                    }
                ],
                "resourceVersion": "550088",
                "uid": "d8aa9a47-ad0f-4bbe-bc12-ab31605d3211"
            },
            "spec": {
                "containers": [
                    {
                        "image": "gcr.io/kuar-demo/kuard-amd64:1",
                        "imagePullPolicy": "Always",
                        "name": "queue",
                        "resources": {},
                        "terminationMessagePath": "/dev/termination-log",
                        "terminationMessagePolicy": "File",
                        "volumeMounts": [
                            {
                                "mountPath": "/var/run/secrets/kubernetes.io/serviceaccount",
                                "name": "kube-api-access-wcrh6",
                                "readOnly": true
                            }
                        ]
                    }
                ],
                "dnsPolicy": "ClusterFirst",
                "enableServiceLinks": true,
                "nodeName": "minikube",
                "preemptionPolicy": "PreemptLowerPriority",
                "priority": 0,
                "restartPolicy": "Always",
                "schedulerName": "default-scheduler",
                "securityContext": {},
                "serviceAccount": "default",
                "serviceAccountName": "default",
                "terminationGracePeriodSeconds": 30,
                "tolerations": [
                    {
                        "effect": "NoExecute",
                        "key": "node.kubernetes.io/not-ready",
                        "operator": "Exists",
                        "tolerationSeconds": 300
                    },
                    {
                        "effect": "NoExecute",
                        "key": "node.kubernetes.io/unreachable",
                        "operator": "Exists",
                        "tolerationSeconds": 300
                    }
                ],
                "volumes": [
                    {
                        "name": "kube-api-access-wcrh6",
                        "projected": {
                            "defaultMode": 420,
                            "sources": [
                                {
                                    "serviceAccountToken": {
                                        "expirationSeconds": 3607,
                                        "path": "token"
                                    }
                                },
                                {
                                    "configMap": {
                                        "items": [
                                            {
                                                "key": "ca.crt",
                                                "path": "ca.crt"
                                            }
                                        ],
                                        "name": "kube-root-ca.crt"
                                    }
                                },
                                {
                                    "downwardAPI": {
                                        "items": [
                                            {
                                                "fieldRef": {
                                                    "apiVersion": "v1",
                                                    "fieldPath": "metadata.namespace"
                                                },
                                                "path": "namespace"
                                            }
                                        ]
                                    }
                                }
                            ]
                        }
                    }
                ]
            },
            "status": {
                "conditions": [
                    {
                        "lastProbeTime": null,
                        "lastTransitionTime": "2022-12-23T09:36:45Z",
                        "status": "True",
                        "type": "Initialized"
                    },
                    {
                        "lastProbeTime": null,
                        "lastTransitionTime": "2022-12-23T09:36:48Z",
                        "status": "True",
                        "type": "Ready"
                    },
                    {
                        "lastProbeTime": null,
                        "lastTransitionTime": "2022-12-23T09:36:48Z",
                        "status": "True",
                        "type": "ContainersReady"
                    },
                    {
                        "lastProbeTime": null,
                        "lastTransitionTime": "2022-12-23T09:36:45Z",
                        "status": "True",
                        "type": "PodScheduled"
                    }
                ],
                "containerStatuses": [
                    {
                        "containerID": "docker://d8e1e33309272b4a4267e15f995ff7b6612532240cb61dc03a118659620226f2",
                        "image": "gcr.io/kuar-demo/kuard-amd64:1",
                        "imageID": "docker-pullable://gcr.io/kuar-demo/kuard-amd64@sha256:bd17153e9a3319f401acc7a27759243f37d422c06cbbf01cb3e1f54bbbfe14f4",
                        "lastState": {},
                        "name": "queue",
                        "ready": true,
                        "restartCount": 0,
                        "started": true,
                        "state": {
                            "running": {
                                "startedAt": "2022-12-23T09:36:47Z"
                            }
                        }
                    }
                ],
                "hostIP": "192.168.49.2",
                "phase": "Running",
                "podIP": "172.17.0.6",
                "podIPs": [
                    {
                        "ip": "172.17.0.6"
                    }
                ],
                "qosClass": "BestEffort",
                "startTime": "2022-12-23T09:36:45Z"
            }
        }
    ],
    "kind": "List",
    "metadata": {
        "resourceVersion": ""
    }
}
