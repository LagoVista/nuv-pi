import sys

sys.path.append('./nuvpy')

import nuviot_jobs

nuviot_jobs.set_job_status("100","200","Queued")
nuviot_jobs.set_job_progress("100","200",50)
nuviot_jobs.add_job_error("123","456","Just wasn't good enough to succeed")
nuviot_jobs.complete_job("123","456","https://www.foo.com/foo/fee/test.txt")
