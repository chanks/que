ALTER TABLE que_jobs ADD COLUMN queue TEXT NOT NULL DEFAULT '';
ALTER TABLE que_jobs DROP CONSTRAINT que_jobs_pkey;
ALTER TABLE que_jobs ADD CONSTRAINT que_jobs_pkey PRIMARY KEY (queue, priority, run_at, job_id);
