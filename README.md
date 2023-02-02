# Experiments and Results

In this repository, you will find all experimental setup scripts and results of the paper "**How Workflow Engines Should Talk to Resource Managers: A Proposal for a Common Workflow Scheduling Interface**."

The repository is structured as follows:

- [setup.sh](setup.sh) Prepares a Kubernetes cluster for experiments.<br>
- [setup/](setup/) Contains configuration files for Kubernetes.<br>
- [inputs/](inputs/) Contains the config files for all nine workflows and scripts to download the data.<br>
- [execution/](execution/) Contains scripts to run the experiments.<br>
- [evaluation/](evaluation/) Contains the trace files and logs of the 990 workflow executions.

---

By default, the experiments will run in the *cws* namespace.<br>
To change this, adjust the namespace in the following files:
- [setup.sh](setup.sh)
- [setup/accounts.yaml](setup/accounts.yaml) (2 times)
- [execution/nextflow.config](execution/nextflow.config) (2 times)
- [execution/runExperiments.sh](execution/runExperiments.sh)

To set up the Kubernetes environment, run the [setup.sh](setup.sh) in the root directory: `bash setup.sh`.
To run the experiments, go into the [execution](execution/) directory and run: `bash runExperiment.sh <Name of your target cluster>`. Make sure to delete the [execution/](execution/) directory before, as existing experiments are skipped.

---

If you use this software or artifacts in a publication, please cite it as:

#### Text
Lehmann, Fabian, Jonathan Bader, Friedrich Tschirpke, Lauritz Thamsen, and Ulf Leser. **How Workflow Engines Should Talk to Resource Managers: A Proposal for a Common Workflow Scheduling Interface**. In 2023 23rd IEEE International Symposium on Cluster, Cloud and Internet Computing (CCGrid). Bangalore, India, 2023.

#### BibTeX
```
@inproceedings{lehmannHowWorkflowEngines2023,
 author = {Lehmann, Fabian and Bader, Jonathan and Tschirpke, Friedrich and Thamsen, Lauritz and Leser, Ulf},
 booktitle = {2023 23rd IEEE International Symposium on Cluster, Cloud and Internet Computing (CCGrid)},
 title = {How Workflow Engines Should Talk to Resource Managers: A Proposal for a Common Workflow Scheduling Interface},
 year = {2023},
 address = {{Bangalore, India}}
}
```
---
#### Acknowledgement:
This work was funded by the German Research Foundation (DFG), CRC 1404: "FONDA: Foundations of Workflows for Large-Scale Scientific Data Analysis." 