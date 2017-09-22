--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.9
-- Dumped by pg_dump version 9.5.9

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: tablefunc; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;


--
-- Name: EXTENSION tablefunc; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: contest_scores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE contest_scores (
    uid integer,
    prob_id integer,
    score integer
);


ALTER TABLE contest_scores OWNER TO postgres;

--
-- Name: login_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE login_data (
    user_id integer,
    domain character varying(40),
    country character varying(40)
);


ALTER TABLE login_data OWNER TO postgres;

--
-- Name: nus_students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE nus_students (
    student_id character varying(40),
    matric_date date,
    study_length interval,
    faculty character varying(40),
    cap real
);


ALTER TABLE nus_students OWNER TO postgres;

--
-- Data for Name: contest_scores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY contest_scores (uid, prob_id, score) FROM stdin;
1	1	3
1	2	8
1	3	1
2	1	7
2	2	3
2	3	3
3	1	4
3	2	2
3	3	3
4	1	7
4	2	5
5	1	4
5	3	7
6	2	3
6	3	4
7	1	4
7	2	4
7	3	9
8	1	7
8	2	2
8	3	4
9	1	8
9	2	0
9	3	4
10	1	3
10	2	3
10	3	6
11	1	9
11	2	2
12	1	7
12	3	2
13	2	2
13	3	8
14	1	9
14	2	7
14	3	0
15	1	1
15	2	7
15	3	9
16	1	2
16	2	6
16	3	7
17	1	4
17	2	4
17	3	9
18	1	8
18	2	2
19	1	3
19	3	1
20	2	1
20	3	4
21	1	1
21	2	4
21	3	6
22	1	8
22	2	5
22	3	3
23	1	0
23	2	5
23	3	1
24	1	5
24	2	9
24	3	7
25	1	9
25	2	0
26	1	3
26	3	5
27	2	3
27	3	7
28	1	5
28	2	0
28	3	1
29	1	4
29	2	4
29	3	5
30	1	5
30	2	8
30	3	3
31	1	3
31	2	8
31	3	5
32	1	2
32	2	9
33	1	4
33	3	7
34	2	4
34	3	8
35	1	1
35	2	1
35	3	2
36	1	4
36	2	9
36	3	6
37	1	5
37	2	3
37	3	0
38	1	1
38	2	3
38	3	8
39	1	3
39	2	9
40	1	0
40	3	0
41	2	1
41	3	3
42	1	0
42	2	2
42	3	7
43	1	4
43	2	3
43	3	0
44	1	3
44	2	6
44	3	3
45	1	4
45	2	1
45	3	2
46	1	4
46	2	0
47	1	0
47	3	9
48	2	2
48	3	1
49	1	0
49	2	9
49	3	7
50	1	2
50	2	8
50	3	2
51	1	3
51	2	3
51	3	9
52	1	9
52	2	5
52	3	4
53	1	1
53	2	1
54	1	8
54	3	0
55	2	4
55	3	3
56	1	2
56	2	4
56	3	0
57	1	2
57	2	9
57	3	7
58	1	5
58	2	0
58	3	1
59	1	8
59	2	1
59	3	1
60	1	0
60	2	0
61	1	3
61	3	8
62	2	3
62	3	5
63	1	7
63	2	3
63	3	6
64	1	1
64	2	4
64	3	8
65	1	1
65	2	5
65	3	2
66	1	4
66	2	6
66	3	2
67	1	2
67	2	9
68	1	1
68	3	1
69	2	7
69	3	5
70	1	9
70	2	4
70	3	5
71	1	0
71	2	6
71	3	5
72	1	4
72	2	8
72	3	0
73	1	3
73	2	8
73	3	9
74	1	9
74	2	2
75	1	3
75	3	8
76	2	7
76	3	3
77	1	0
77	2	1
77	3	3
78	1	4
78	2	9
78	3	3
79	1	6
79	2	4
79	3	3
80	1	5
80	2	8
80	3	3
81	1	8
81	2	3
82	1	1
82	3	0
83	2	3
83	3	3
84	1	6
84	2	2
84	3	4
85	1	2
85	2	1
85	3	9
86	1	2
86	2	6
86	3	4
87	1	2
87	2	3
87	3	1
88	1	3
88	2	7
89	1	2
89	3	2
90	2	5
90	3	9
91	1	1
91	2	2
91	3	3
92	1	6
92	2	1
92	3	6
93	1	4
93	2	1
93	3	9
94	1	3
94	2	3
94	3	4
95	1	7
95	2	7
96	1	2
96	3	9
97	2	5
97	3	3
98	1	7
98	2	7
98	3	4
99	1	5
99	2	6
99	3	3
100	1	3
100	2	6
100	3	2
101	1	4
101	2	0
101	3	3
102	1	6
102	2	3
103	1	9
103	3	6
104	2	3
104	3	5
105	1	1
105	2	6
105	3	8
106	1	4
106	2	8
106	3	8
107	1	6
107	2	9
107	3	9
108	1	9
108	2	1
108	3	3
109	1	5
109	2	2
110	1	0
110	3	4
111	2	9
111	3	9
112	1	1
112	2	5
112	3	1
113	1	6
113	2	9
113	3	8
114	1	0
114	2	1
114	3	1
115	1	6
115	2	8
115	3	1
116	1	2
116	2	8
117	1	9
117	3	2
118	2	2
118	3	7
119	1	8
119	2	1
119	3	5
120	1	7
120	2	4
120	3	8
121	1	0
121	2	2
121	3	7
122	1	1
122	2	1
122	3	1
123	1	5
123	2	6
124	1	1
124	3	2
125	2	6
125	3	1
126	1	4
126	2	1
126	3	1
127	1	1
127	2	5
127	3	1
128	1	3
128	2	2
128	3	7
129	1	3
129	2	6
129	3	4
130	1	4
130	2	8
131	1	5
131	3	8
132	2	1
132	3	2
133	1	9
133	2	0
133	3	9
134	1	6
134	2	3
134	3	1
135	1	8
135	2	6
135	3	4
136	1	0
136	2	4
136	3	8
137	1	0
137	2	7
138	1	5
138	3	6
139	2	7
139	3	9
140	1	2
140	2	4
140	3	5
141	1	8
141	2	1
141	3	3
142	1	3
142	2	3
142	3	3
143	1	4
143	2	1
143	3	7
144	1	5
144	2	0
145	1	3
145	3	2
146	2	3
146	3	9
147	1	5
147	2	1
147	3	1
148	1	2
148	2	3
148	3	2
149	1	6
149	2	6
149	3	8
150	1	1
150	2	3
150	3	9
151	1	1
151	2	3
152	1	4
152	3	2
153	2	3
153	3	9
154	1	9
154	2	9
154	3	2
155	1	4
155	2	8
155	3	3
156	1	1
156	2	5
156	3	9
157	1	5
157	2	0
157	3	1
158	1	7
158	2	0
159	1	2
159	3	6
160	2	5
160	3	7
161	1	9
161	2	4
161	3	7
162	1	9
162	2	2
162	3	1
163	1	9
163	2	5
163	3	6
164	1	0
164	2	7
164	3	8
165	1	9
165	2	0
166	1	3
166	3	9
167	2	9
167	3	5
168	1	6
168	2	0
168	3	8
169	1	8
169	2	6
169	3	0
170	1	9
170	2	2
170	3	2
171	1	2
171	2	0
171	3	7
172	1	5
172	2	4
173	1	4
173	3	8
174	2	9
174	3	2
175	1	2
175	2	3
175	3	6
176	1	2
176	2	1
176	3	6
177	1	5
177	2	6
177	3	1
178	1	4
178	2	7
178	3	9
179	1	0
179	2	5
180	1	5
180	3	0
181	2	2
181	3	1
182	1	0
182	2	2
182	3	4
183	1	3
183	2	0
183	3	5
184	1	7
184	2	8
184	3	0
185	1	7
185	2	1
185	3	5
186	1	4
186	2	3
187	1	0
187	3	3
188	2	4
188	3	6
189	1	3
189	2	7
189	3	4
190	1	2
190	2	7
190	3	1
191	1	8
191	2	9
191	3	9
192	1	8
192	2	6
192	3	6
193	1	9
193	2	0
194	1	3
194	3	3
195	2	6
195	3	6
196	1	7
196	2	8
196	3	6
197	1	2
197	2	2
197	3	0
198	1	7
198	2	5
198	3	9
199	1	7
199	2	7
199	3	1
200	1	5
200	2	8
201	1	4
201	3	0
202	2	0
202	3	3
203	1	5
203	2	7
203	3	2
204	1	5
204	2	6
204	3	3
205	1	0
205	2	4
205	3	6
206	1	1
206	2	0
206	3	3
207	1	0
207	2	3
208	1	4
208	3	6
209	2	3
209	3	9
210	1	0
210	2	0
210	3	3
211	1	8
211	2	8
211	3	7
212	1	9
212	2	0
212	3	8
213	1	6
213	2	2
213	3	7
214	1	1
214	2	5
215	1	4
215	3	7
216	2	5
216	3	6
217	1	7
217	2	6
217	3	5
218	1	3
218	2	5
218	3	5
219	1	8
219	2	6
219	3	0
220	1	7
220	2	1
220	3	3
221	1	1
221	2	0
222	1	9
222	3	3
223	2	7
223	3	7
224	1	5
224	2	0
224	3	9
225	1	8
225	2	9
225	3	2
226	1	9
226	2	8
226	3	7
227	1	6
227	2	9
227	3	3
228	1	4
228	2	3
229	1	0
229	3	9
230	2	4
230	3	5
231	1	2
231	2	6
231	3	4
232	1	2
232	2	2
232	3	1
233	1	4
233	2	1
233	3	7
234	1	4
234	2	1
234	3	1
235	1	4
235	2	3
236	1	0
236	3	2
237	2	5
237	3	2
238	1	0
238	2	2
238	3	1
239	1	3
239	2	0
239	3	5
240	1	5
240	2	6
240	3	8
241	1	8
241	2	2
241	3	1
242	1	1
242	2	4
243	1	5
243	3	4
244	2	6
244	3	1
245	1	8
245	2	4
245	3	1
246	1	7
246	2	4
246	3	8
247	1	8
247	2	7
247	3	5
248	1	4
248	2	7
248	3	4
249	1	1
249	2	9
250	1	6
250	3	7
251	2	0
251	3	5
252	1	6
252	2	2
252	3	9
253	1	7
253	2	3
253	3	8
254	1	4
254	2	2
254	3	9
255	1	5
255	2	1
255	3	8
256	1	9
256	2	2
257	1	0
257	3	9
258	2	3
258	3	2
259	1	8
259	2	3
259	3	5
260	1	3
260	2	8
260	3	9
261	1	1
261	2	1
261	3	4
262	1	1
262	2	9
262	3	1
263	1	4
263	2	1
264	1	0
264	3	9
265	2	5
265	3	3
266	1	2
266	2	5
266	3	2
267	1	0
267	2	4
267	3	0
268	1	6
268	2	2
268	3	9
269	1	1
269	2	4
269	3	1
270	1	1
270	2	8
271	1	5
271	3	9
272	2	6
272	3	6
273	1	0
273	2	3
273	3	6
274	1	9
274	2	0
274	3	0
275	1	8
275	2	8
275	3	6
276	1	1
276	2	1
276	3	5
277	1	0
277	2	8
278	1	2
278	3	0
279	2	3
279	3	4
280	1	5
280	2	2
280	3	0
281	1	8
281	2	9
281	3	8
282	1	0
282	2	4
282	3	4
283	1	2
283	2	5
283	3	8
284	1	5
284	2	0
285	1	3
285	3	9
286	2	1
286	3	4
287	1	4
287	2	4
287	3	4
288	1	1
288	2	2
288	3	1
289	1	3
289	2	6
289	3	5
290	1	3
290	2	6
290	3	8
291	1	5
291	2	8
292	1	9
292	3	9
293	2	6
293	3	7
294	1	6
294	2	1
294	3	8
295	1	7
295	2	7
295	3	5
296	1	1
296	2	6
296	3	1
297	1	1
297	2	5
297	3	7
298	1	7
298	2	3
299	1	9
299	3	4
300	2	3
300	3	3
301	1	7
301	2	2
301	3	3
302	1	2
302	2	1
302	3	6
303	1	3
303	2	3
303	3	6
304	1	8
304	2	8
304	3	8
305	1	5
305	2	6
306	1	2
306	3	0
307	2	9
307	3	6
308	1	4
308	2	4
308	3	0
309	1	4
309	2	8
309	3	9
310	1	1
310	2	9
310	3	5
311	1	3
311	2	3
311	3	9
312	1	3
312	2	6
313	1	2
313	3	5
314	2	8
314	3	5
315	1	0
315	2	1
315	3	5
316	1	2
316	2	5
316	3	1
317	1	3
317	2	5
317	3	7
318	1	2
318	2	4
318	3	1
319	1	9
319	2	8
320	1	2
320	3	5
321	2	5
321	3	9
322	1	9
322	2	2
322	3	9
323	1	4
323	2	0
323	3	2
324	1	4
324	2	3
324	3	3
325	1	8
325	2	3
325	3	7
326	1	3
326	2	7
327	1	4
327	3	4
328	2	7
328	3	3
329	1	0
329	2	3
329	3	3
330	1	8
330	2	0
330	3	4
331	1	4
331	2	7
331	3	1
332	1	5
332	2	4
332	3	3
333	1	5
333	2	6
334	1	5
334	3	1
335	2	1
335	3	0
336	1	2
336	2	5
336	3	3
337	1	2
337	2	2
337	3	4
338	1	6
338	2	2
338	3	8
339	1	2
339	2	9
339	3	0
340	1	8
340	2	1
341	1	2
341	3	6
342	2	6
342	3	2
343	1	9
343	2	6
343	3	1
344	1	5
344	2	2
344	3	5
345	1	0
345	2	5
345	3	8
346	1	3
346	2	7
346	3	0
347	1	6
347	2	7
348	1	1
348	3	8
349	2	7
349	3	8
350	1	1
350	2	2
350	3	9
351	1	3
351	2	9
351	3	7
352	1	0
352	2	1
352	3	1
353	1	5
353	2	1
353	3	9
354	1	0
354	2	6
355	1	7
355	3	5
356	2	8
356	3	0
357	1	6
357	2	5
357	3	6
358	1	4
358	2	1
358	3	2
359	1	2
359	2	9
359	3	4
360	1	4
360	2	1
360	3	4
361	1	1
361	2	8
362	1	1
362	3	9
363	2	2
363	3	9
364	1	4
364	2	6
364	3	8
365	1	2
365	2	6
365	3	3
366	1	3
366	2	0
366	3	6
367	1	9
367	2	5
367	3	4
368	1	8
368	2	6
369	1	9
369	3	9
370	2	6
370	3	5
371	1	8
371	2	2
371	3	1
372	1	4
372	2	8
372	3	7
373	1	7
373	2	4
373	3	8
374	1	3
374	2	3
374	3	3
375	1	6
375	2	5
376	1	9
376	3	7
377	2	8
377	3	6
378	1	9
378	2	5
378	3	1
379	1	0
379	2	9
379	3	2
380	1	3
380	2	4
380	3	8
381	1	6
381	2	5
381	3	9
382	1	6
382	2	0
383	1	9
383	3	8
384	2	8
384	3	8
385	1	6
385	2	8
385	3	1
386	1	7
386	2	3
386	3	6
387	1	3
387	2	3
387	3	0
388	1	2
388	2	5
388	3	1
389	1	0
389	2	8
390	1	2
390	3	8
391	2	5
391	3	7
392	1	6
392	2	5
392	3	4
393	1	5
393	2	5
393	3	0
394	1	9
394	2	5
394	3	2
395	1	4
395	2	8
395	3	8
396	1	7
396	2	4
397	1	2
397	3	7
398	2	4
398	3	1
399	1	0
399	2	0
399	3	5
400	1	0
400	2	6
400	3	0
401	1	7
401	2	4
401	3	1
402	1	4
402	2	0
402	3	1
403	1	6
403	2	3
404	1	4
404	3	6
405	2	2
405	3	0
406	1	0
406	2	4
406	3	2
407	1	9
407	2	6
407	3	0
408	1	3
408	2	9
408	3	7
409	1	7
409	2	9
409	3	8
410	1	1
410	2	1
411	1	3
411	3	7
412	2	7
412	3	8
413	1	8
413	2	9
413	3	1
414	1	2
414	2	0
414	3	8
415	1	1
415	2	6
415	3	7
416	1	1
416	2	2
416	3	7
417	1	8
417	2	9
418	1	8
418	3	1
419	2	6
419	3	0
420	1	9
420	2	1
420	3	1
421	1	3
421	2	9
421	3	0
422	1	2
422	2	3
422	3	6
423	1	4
423	2	8
423	3	7
424	1	8
424	2	1
425	1	7
425	3	7
426	2	1
426	3	7
427	1	4
427	2	8
427	3	9
428	1	3
428	2	2
428	3	3
429	1	1
429	2	8
429	3	4
430	1	9
430	2	8
430	3	0
431	1	6
431	2	9
432	1	9
432	3	4
433	2	8
433	3	4
434	1	8
434	2	4
434	3	9
435	1	0
435	2	1
435	3	1
436	1	6
436	2	8
436	3	0
437	1	3
437	2	9
437	3	2
438	1	9
438	2	0
439	1	7
439	3	1
440	2	9
440	3	0
441	1	4
441	2	4
441	3	9
442	1	1
442	2	0
442	3	6
443	1	5
443	2	8
443	3	2
444	1	7
444	2	5
444	3	6
445	1	1
445	2	3
446	1	2
446	3	3
447	2	5
447	3	6
448	1	6
448	2	0
448	3	3
449	1	9
449	2	9
449	3	1
450	1	3
450	2	8
450	3	1
451	1	5
451	2	7
451	3	7
452	1	4
452	2	7
453	1	1
453	3	2
454	2	8
454	3	8
455	1	4
455	2	3
455	3	9
456	1	4
456	2	8
456	3	0
457	1	9
457	2	1
457	3	4
458	1	8
458	2	4
458	3	9
459	1	6
459	2	7
460	1	4
460	3	7
461	2	3
461	3	3
462	1	4
462	2	3
462	3	4
463	1	7
463	2	3
463	3	8
464	1	2
464	2	7
464	3	5
465	1	2
465	2	0
465	3	1
466	1	0
466	2	4
467	1	2
467	3	1
468	2	7
468	3	8
469	1	6
469	2	5
469	3	2
470	1	1
470	2	1
470	3	1
471	1	9
471	2	3
471	3	4
472	1	2
472	2	2
472	3	2
473	1	6
473	2	7
474	1	6
474	3	3
475	2	3
475	3	3
476	1	5
476	2	6
476	3	2
477	1	0
477	2	1
477	3	0
478	1	6
478	2	8
478	3	7
479	1	9
479	2	8
479	3	5
480	1	0
480	2	0
481	1	4
481	3	9
482	2	4
482	3	4
483	1	5
483	2	8
483	3	7
484	1	8
484	2	7
484	3	0
485	1	6
485	2	1
485	3	8
486	1	2
486	2	7
486	3	3
487	1	4
487	2	4
488	1	6
488	3	4
489	2	0
489	3	5
490	1	9
490	2	9
490	3	0
491	1	4
491	2	1
491	3	8
492	1	5
492	2	9
492	3	2
493	1	9
493	2	5
493	3	5
494	1	2
494	2	8
495	1	4
495	3	6
496	2	6
496	3	6
497	1	4
497	2	5
497	3	9
498	1	4
498	2	5
498	3	6
499	1	0
499	2	7
499	3	9
500	1	9
500	2	5
500	3	0
1	1	3
1	2	8
1	3	1
2	1	7
2	2	3
2	3	3
3	1	4
3	2	2
3	3	3
4	1	7
4	2	5
5	1	4
5	3	7
6	2	3
6	3	4
7	1	4
7	2	4
7	3	9
8	1	7
8	2	2
8	3	4
9	1	8
9	2	0
9	3	4
10	1	3
10	2	3
10	3	6
11	1	9
11	2	2
12	1	7
12	3	2
13	2	2
13	3	8
14	1	9
14	2	7
14	3	0
15	1	1
15	2	7
15	3	9
16	1	2
16	2	6
16	3	7
17	1	4
17	2	4
17	3	9
18	1	8
18	2	2
19	1	3
19	3	1
20	2	1
20	3	4
21	1	1
21	2	4
21	3	6
22	1	8
22	2	5
22	3	3
23	1	0
23	2	5
23	3	1
24	1	5
24	2	9
24	3	7
25	1	9
25	2	0
26	1	3
26	3	5
27	2	3
27	3	7
28	1	5
28	2	0
28	3	1
29	1	4
29	2	4
29	3	5
30	1	5
30	2	8
30	3	3
31	1	3
31	2	8
31	3	5
32	1	2
32	2	9
33	1	4
33	3	7
34	2	4
34	3	8
35	1	1
35	2	1
35	3	2
36	1	4
36	2	9
36	3	6
37	1	5
37	2	3
37	3	0
38	1	1
38	2	3
38	3	8
39	1	3
39	2	9
40	1	0
40	3	0
41	2	1
41	3	3
42	1	0
42	2	2
42	3	7
43	1	4
43	2	3
43	3	0
44	1	3
44	2	6
44	3	3
45	1	4
45	2	1
45	3	2
46	1	4
46	2	0
47	1	0
47	3	9
48	2	2
48	3	1
49	1	0
49	2	9
49	3	7
50	1	2
50	2	8
50	3	2
51	1	3
51	2	3
51	3	9
52	1	9
52	2	5
52	3	4
53	1	1
53	2	1
54	1	8
54	3	0
55	2	4
55	3	3
56	1	2
56	2	4
56	3	0
57	1	2
57	2	9
57	3	7
58	1	5
58	2	0
58	3	1
59	1	8
59	2	1
59	3	1
60	1	0
60	2	0
61	1	3
61	3	8
62	2	3
62	3	5
63	1	7
63	2	3
63	3	6
64	1	1
64	2	4
64	3	8
65	1	1
65	2	5
65	3	2
66	1	4
66	2	6
66	3	2
67	1	2
67	2	9
68	1	1
68	3	1
69	2	7
69	3	5
70	1	9
70	2	4
70	3	5
71	1	0
71	2	6
71	3	5
72	1	4
72	2	8
72	3	0
73	1	3
73	2	8
73	3	9
74	1	9
74	2	2
75	1	3
75	3	8
76	2	7
76	3	3
77	1	0
77	2	1
77	3	3
78	1	4
78	2	9
78	3	3
79	1	6
79	2	4
79	3	3
80	1	5
80	2	8
80	3	3
81	1	8
81	2	3
82	1	1
82	3	0
83	2	3
83	3	3
84	1	6
84	2	2
84	3	4
85	1	2
85	2	1
85	3	9
86	1	2
86	2	6
86	3	4
87	1	2
87	2	3
87	3	1
88	1	3
88	2	7
89	1	2
89	3	2
90	2	5
90	3	9
91	1	1
91	2	2
91	3	3
92	1	6
92	2	1
92	3	6
93	1	4
93	2	1
93	3	9
94	1	3
94	2	3
94	3	4
95	1	7
95	2	7
96	1	2
96	3	9
97	2	5
97	3	3
98	1	7
98	2	7
98	3	4
99	1	5
99	2	6
99	3	3
100	1	3
100	2	6
100	3	2
101	1	4
101	2	0
101	3	3
102	1	6
102	2	3
103	1	9
103	3	6
104	2	3
104	3	5
105	1	1
105	2	6
105	3	8
106	1	4
106	2	8
106	3	8
107	1	6
107	2	9
107	3	9
108	1	9
108	2	1
108	3	3
109	1	5
109	2	2
110	1	0
110	3	4
111	2	9
111	3	9
112	1	1
112	2	5
112	3	1
113	1	6
113	2	9
113	3	8
114	1	0
114	2	1
114	3	1
115	1	6
115	2	8
115	3	1
116	1	2
116	2	8
117	1	9
117	3	2
118	2	2
118	3	7
119	1	8
119	2	1
119	3	5
120	1	7
120	2	4
120	3	8
121	1	0
121	2	2
121	3	7
122	1	1
122	2	1
122	3	1
123	1	5
123	2	6
124	1	1
124	3	2
125	2	6
125	3	1
126	1	4
126	2	1
126	3	1
127	1	1
127	2	5
127	3	1
128	1	3
128	2	2
128	3	7
129	1	3
129	2	6
129	3	4
130	1	4
130	2	8
131	1	5
131	3	8
132	2	1
132	3	2
133	1	9
133	2	0
133	3	9
134	1	6
134	2	3
134	3	1
135	1	8
135	2	6
135	3	4
136	1	0
136	2	4
136	3	8
137	1	0
137	2	7
138	1	5
138	3	6
139	2	7
139	3	9
140	1	2
140	2	4
140	3	5
141	1	8
141	2	1
141	3	3
142	1	3
142	2	3
142	3	3
143	1	4
143	2	1
143	3	7
144	1	5
144	2	0
145	1	3
145	3	2
146	2	3
146	3	9
147	1	5
147	2	1
147	3	1
148	1	2
148	2	3
148	3	2
149	1	6
149	2	6
149	3	8
150	1	1
150	2	3
150	3	9
151	1	1
151	2	3
152	1	4
152	3	2
153	2	3
153	3	9
154	1	9
154	2	9
154	3	2
155	1	4
155	2	8
155	3	3
156	1	1
156	2	5
156	3	9
157	1	5
157	2	0
157	3	1
158	1	7
158	2	0
159	1	2
159	3	6
160	2	5
160	3	7
161	1	9
161	2	4
161	3	7
162	1	9
162	2	2
162	3	1
163	1	9
163	2	5
163	3	6
164	1	0
164	2	7
164	3	8
165	1	9
165	2	0
166	1	3
166	3	9
167	2	9
167	3	5
168	1	6
168	2	0
168	3	8
169	1	8
169	2	6
169	3	0
170	1	9
170	2	2
170	3	2
171	1	2
171	2	0
171	3	7
172	1	5
172	2	4
173	1	4
173	3	8
174	2	9
174	3	2
175	1	2
175	2	3
175	3	6
176	1	2
176	2	1
176	3	6
177	1	5
177	2	6
177	3	1
178	1	4
178	2	7
178	3	9
179	1	0
179	2	5
180	1	5
180	3	0
181	2	2
181	3	1
182	1	0
182	2	2
182	3	4
183	1	3
183	2	0
183	3	5
184	1	7
184	2	8
184	3	0
185	1	7
185	2	1
185	3	5
186	1	4
186	2	3
187	1	0
187	3	3
188	2	4
188	3	6
189	1	3
189	2	7
189	3	4
190	1	2
190	2	7
190	3	1
191	1	8
191	2	9
191	3	9
192	1	8
192	2	6
192	3	6
193	1	9
193	2	0
194	1	3
194	3	3
195	2	6
195	3	6
196	1	7
196	2	8
196	3	6
197	1	2
197	2	2
197	3	0
198	1	7
198	2	5
198	3	9
199	1	7
199	2	7
199	3	1
200	1	5
200	2	8
201	1	4
201	3	0
202	2	0
202	3	3
203	1	5
203	2	7
203	3	2
204	1	5
204	2	6
204	3	3
205	1	0
205	2	4
205	3	6
206	1	1
206	2	0
206	3	3
207	1	0
207	2	3
208	1	4
208	3	6
209	2	3
209	3	9
210	1	0
210	2	0
210	3	3
211	1	8
211	2	8
211	3	7
212	1	9
212	2	0
212	3	8
213	1	6
213	2	2
213	3	7
214	1	1
214	2	5
215	1	4
215	3	7
216	2	5
216	3	6
217	1	7
217	2	6
217	3	5
218	1	3
218	2	5
218	3	5
219	1	8
219	2	6
219	3	0
220	1	7
220	2	1
220	3	3
221	1	1
221	2	0
222	1	9
222	3	3
223	2	7
223	3	7
224	1	5
224	2	0
224	3	9
225	1	8
225	2	9
225	3	2
226	1	9
226	2	8
226	3	7
227	1	6
227	2	9
227	3	3
228	1	4
228	2	3
229	1	0
229	3	9
230	2	4
230	3	5
231	1	2
231	2	6
231	3	4
232	1	2
232	2	2
232	3	1
233	1	4
233	2	1
233	3	7
234	1	4
234	2	1
234	3	1
235	1	4
235	2	3
236	1	0
236	3	2
237	2	5
237	3	2
238	1	0
238	2	2
238	3	1
239	1	3
239	2	0
239	3	5
240	1	5
240	2	6
240	3	8
241	1	8
241	2	2
241	3	1
242	1	1
242	2	4
243	1	5
243	3	4
244	2	6
244	3	1
245	1	8
245	2	4
245	3	1
246	1	7
246	2	4
246	3	8
247	1	8
247	2	7
247	3	5
248	1	4
248	2	7
248	3	4
249	1	1
249	2	9
250	1	6
250	3	7
251	2	0
251	3	5
252	1	6
252	2	2
252	3	9
253	1	7
253	2	3
253	3	8
254	1	4
254	2	2
254	3	9
255	1	5
255	2	1
255	3	8
256	1	9
256	2	2
257	1	0
257	3	9
258	2	3
258	3	2
259	1	8
259	2	3
259	3	5
260	1	3
260	2	8
260	3	9
261	1	1
261	2	1
261	3	4
262	1	1
262	2	9
262	3	1
263	1	4
263	2	1
264	1	0
264	3	9
265	2	5
265	3	3
266	1	2
266	2	5
266	3	2
267	1	0
267	2	4
267	3	0
268	1	6
268	2	2
268	3	9
269	1	1
269	2	4
269	3	1
270	1	1
270	2	8
271	1	5
271	3	9
272	2	6
272	3	6
273	1	0
273	2	3
273	3	6
274	1	9
274	2	0
274	3	0
275	1	8
275	2	8
275	3	6
276	1	1
276	2	1
276	3	5
277	1	0
277	2	8
278	1	2
278	3	0
279	2	3
279	3	4
280	1	5
280	2	2
280	3	0
281	1	8
281	2	9
281	3	8
282	1	0
282	2	4
282	3	4
283	1	2
283	2	5
283	3	8
284	1	5
284	2	0
285	1	3
285	3	9
286	2	1
286	3	4
287	1	4
287	2	4
287	3	4
288	1	1
288	2	2
288	3	1
289	1	3
289	2	6
289	3	5
290	1	3
290	2	6
290	3	8
291	1	5
291	2	8
292	1	9
292	3	9
293	2	6
293	3	7
294	1	6
294	2	1
294	3	8
295	1	7
295	2	7
295	3	5
296	1	1
296	2	6
296	3	1
297	1	1
297	2	5
297	3	7
298	1	7
298	2	3
299	1	9
299	3	4
300	2	3
300	3	3
301	1	7
301	2	2
301	3	3
302	1	2
302	2	1
302	3	6
303	1	3
303	2	3
303	3	6
304	1	8
304	2	8
304	3	8
305	1	5
305	2	6
306	1	2
306	3	0
307	2	9
307	3	6
308	1	4
308	2	4
308	3	0
309	1	4
309	2	8
309	3	9
310	1	1
310	2	9
310	3	5
311	1	3
311	2	3
311	3	9
312	1	3
312	2	6
313	1	2
313	3	5
314	2	8
314	3	5
315	1	0
315	2	1
315	3	5
316	1	2
316	2	5
316	3	1
317	1	3
317	2	5
317	3	7
318	1	2
318	2	4
318	3	1
319	1	9
319	2	8
320	1	2
320	3	5
321	2	5
321	3	9
322	1	9
322	2	2
322	3	9
323	1	4
323	2	0
323	3	2
324	1	4
324	2	3
324	3	3
325	1	8
325	2	3
325	3	7
326	1	3
326	2	7
327	1	4
327	3	4
328	2	7
328	3	3
329	1	0
329	2	3
329	3	3
330	1	8
330	2	0
330	3	4
331	1	4
331	2	7
331	3	1
332	1	5
332	2	4
332	3	3
333	1	5
333	2	6
334	1	5
334	3	1
335	2	1
335	3	0
336	1	2
336	2	5
336	3	3
337	1	2
337	2	2
337	3	4
338	1	6
338	2	2
338	3	8
339	1	2
339	2	9
339	3	0
340	1	8
340	2	1
341	1	2
341	3	6
342	2	6
342	3	2
343	1	9
343	2	6
343	3	1
344	1	5
344	2	2
344	3	5
345	1	0
345	2	5
345	3	8
346	1	3
346	2	7
346	3	0
347	1	6
347	2	7
348	1	1
348	3	8
349	2	7
349	3	8
350	1	1
350	2	2
350	3	9
351	1	3
351	2	9
351	3	7
352	1	0
352	2	1
352	3	1
353	1	5
353	2	1
353	3	9
354	1	0
354	2	6
355	1	7
355	3	5
356	2	8
356	3	0
357	1	6
357	2	5
357	3	6
358	1	4
358	2	1
358	3	2
359	1	2
359	2	9
359	3	4
360	1	4
360	2	1
360	3	4
361	1	1
361	2	8
362	1	1
362	3	9
363	2	2
363	3	9
364	1	4
364	2	6
364	3	8
365	1	2
365	2	6
365	3	3
366	1	3
366	2	0
366	3	6
367	1	9
367	2	5
367	3	4
368	1	8
368	2	6
369	1	9
369	3	9
370	2	6
370	3	5
371	1	8
371	2	2
371	3	1
372	1	4
372	2	8
372	3	7
373	1	7
373	2	4
373	3	8
374	1	3
374	2	3
374	3	3
375	1	6
375	2	5
376	1	9
376	3	7
377	2	8
377	3	6
378	1	9
378	2	5
378	3	1
379	1	0
379	2	9
379	3	2
380	1	3
380	2	4
380	3	8
381	1	6
381	2	5
381	3	9
382	1	6
382	2	0
383	1	9
383	3	8
384	2	8
384	3	8
385	1	6
385	2	8
385	3	1
386	1	7
386	2	3
386	3	6
387	1	3
387	2	3
387	3	0
388	1	2
388	2	5
388	3	1
389	1	0
389	2	8
390	1	2
390	3	8
391	2	5
391	3	7
392	1	6
392	2	5
392	3	4
393	1	5
393	2	5
393	3	0
394	1	9
394	2	5
394	3	2
395	1	4
395	2	8
395	3	8
396	1	7
396	2	4
397	1	2
397	3	7
398	2	4
398	3	1
399	1	0
399	2	0
399	3	5
400	1	0
400	2	6
400	3	0
401	1	7
401	2	4
401	3	1
402	1	4
402	2	0
402	3	1
403	1	6
403	2	3
404	1	4
404	3	6
405	2	2
405	3	0
406	1	0
406	2	4
406	3	2
407	1	9
407	2	6
407	3	0
408	1	3
408	2	9
408	3	7
409	1	7
409	2	9
409	3	8
410	1	1
410	2	1
411	1	3
411	3	7
412	2	7
412	3	8
413	1	8
413	2	9
413	3	1
414	1	2
414	2	0
414	3	8
415	1	1
415	2	6
415	3	7
416	1	1
416	2	2
416	3	7
417	1	8
417	2	9
418	1	8
418	3	1
419	2	6
419	3	0
420	1	9
420	2	1
420	3	1
421	1	3
421	2	9
421	3	0
422	1	2
422	2	3
422	3	6
423	1	4
423	2	8
423	3	7
424	1	8
424	2	1
425	1	7
425	3	7
426	2	1
426	3	7
427	1	4
427	2	8
427	3	9
428	1	3
428	2	2
428	3	3
429	1	1
429	2	8
429	3	4
430	1	9
430	2	8
430	3	0
431	1	6
431	2	9
432	1	9
432	3	4
433	2	8
433	3	4
434	1	8
434	2	4
434	3	9
435	1	0
435	2	1
435	3	1
436	1	6
436	2	8
436	3	0
437	1	3
437	2	9
437	3	2
438	1	9
438	2	0
439	1	7
439	3	1
440	2	9
440	3	0
441	1	4
441	2	4
441	3	9
442	1	1
442	2	0
442	3	6
443	1	5
443	2	8
443	3	2
444	1	7
444	2	5
444	3	6
445	1	1
445	2	3
446	1	2
446	3	3
447	2	5
447	3	6
448	1	6
448	2	0
448	3	3
449	1	9
449	2	9
449	3	1
450	1	3
450	2	8
450	3	1
451	1	5
451	2	7
451	3	7
452	1	4
452	2	7
453	1	1
453	3	2
454	2	8
454	3	8
455	1	4
455	2	3
455	3	9
456	1	4
456	2	8
456	3	0
457	1	9
457	2	1
457	3	4
458	1	8
458	2	4
458	3	9
459	1	6
459	2	7
460	1	4
460	3	7
461	2	3
461	3	3
462	1	4
462	2	3
462	3	4
463	1	7
463	2	3
463	3	8
464	1	2
464	2	7
464	3	5
465	1	2
465	2	0
465	3	1
466	1	0
466	2	4
467	1	2
467	3	1
468	2	7
468	3	8
469	1	6
469	2	5
469	3	2
470	1	1
470	2	1
470	3	1
471	1	9
471	2	3
471	3	4
472	1	2
472	2	2
472	3	2
473	1	6
473	2	7
474	1	6
474	3	3
475	2	3
475	3	3
476	1	5
476	2	6
476	3	2
477	1	0
477	2	1
477	3	0
478	1	6
478	2	8
478	3	7
479	1	9
479	2	8
479	3	5
480	1	0
480	2	0
481	1	4
481	3	9
482	2	4
482	3	4
483	1	5
483	2	8
483	3	7
484	1	8
484	2	7
484	3	0
485	1	6
485	2	1
485	3	8
486	1	2
486	2	7
486	3	3
487	1	4
487	2	4
488	1	6
488	3	4
489	2	0
489	3	5
490	1	9
490	2	9
490	3	0
491	1	4
491	2	1
491	3	8
492	1	5
492	2	9
492	3	2
493	1	9
493	2	5
493	3	5
494	1	2
494	2	8
495	1	4
495	3	6
496	2	6
496	3	6
497	1	4
497	2	5
497	3	9
498	1	4
498	2	5
498	3	6
499	1	0
499	2	7
499	3	9
500	1	9
500	2	5
500	3	0
\.


--
-- Data for Name: login_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY login_data (user_id, domain, country) FROM stdin;
2667990	youtube.com	GB
7911231	nushackers.org	SG
7603545	reddit.com	JP
5441576	github.com	JP
133141	nushackers.org	GB
3147342	youtube.com	KR
6647317	github.com	GB
5065580	youtube.com	US
3039266	reddit.com	SG
6803895	google.com	US
5073630	youtube.com	GB
2628119	github.com	GB
5742564	amazon.com	JP
7378794	nushackers.org	GB
4677318	google.com	GB
7551454	facebook.com	KR
719793	nushackers.org	JP
26695	facebook.com	GB
6989330	amazon.com	KR
9390831	nushackers.org	GB
2732373	youtube.com	JP
351051	youtube.com	GB
307125	reddit.com	US
6880814	facebook.com	JP
8072984	facebook.com	GB
3087096	github.com	JP
6327239	youtube.com	US
1993933	google.com	US
3814255	nushackers.org	US
7881197	amazon.com	SG
5824089	youtube.com	SG
621282	facebook.com	JP
5472899	reddit.com	SG
7531504	github.com	SG
7259504	youtube.com	KR
5297729	google.com	GB
5975815	nushackers.org	GB
7873637	nushackers.org	GB
1622404	youtube.com	GB
1133869	google.com	US
9850203	nushackers.org	GB
8597082	google.com	SG
4387457	nushackers.org	SG
3868431	google.com	GB
7335159	google.com	US
7877057	amazon.com	GB
9524999	nushackers.org	US
5935381	reddit.com	GB
4407339	facebook.com	JP
4503527	amazon.com	KR
9386344	amazon.com	US
1713236	youtube.com	JP
9527576	nushackers.org	SG
1119442	nushackers.org	JP
4859436	reddit.com	US
6880005	google.com	GB
2313120	reddit.com	SG
4215930	reddit.com	US
3613958	nushackers.org	KR
9532459	youtube.com	JP
580876	google.com	US
222725	youtube.com	GB
6645145	google.com	SG
4685950	google.com	US
8619177	reddit.com	KR
9599213	github.com	JP
4765073	google.com	GB
8604660	amazon.com	JP
2203086	reddit.com	JP
2918982	github.com	JP
7284649	nushackers.org	SG
5634736	reddit.com	JP
8903469	nushackers.org	JP
5053817	facebook.com	US
1431429	reddit.com	JP
9884901	facebook.com	KR
9792496	google.com	JP
693075	youtube.com	KR
2553209	youtube.com	JP
83376	nushackers.org	US
4569594	reddit.com	GB
8865508	google.com	GB
1755535	youtube.com	JP
2086616	reddit.com	GB
8656143	facebook.com	GB
4046475	nushackers.org	KR
113010	facebook.com	SG
9931610	youtube.com	GB
1389479	amazon.com	GB
6804878	reddit.com	KR
1391292	reddit.com	JP
7930627	amazon.com	SG
3333647	reddit.com	KR
6671497	youtube.com	GB
4978036	google.com	JP
3517977	reddit.com	GB
4616390	google.com	GB
1402940	nushackers.org	KR
4778012	nushackers.org	JP
5576737	youtube.com	SG
8087398	nushackers.org	US
6745205	facebook.com	JP
2094874	google.com	KR
8762587	nushackers.org	US
1401515	github.com	SG
703129	facebook.com	SG
1850804	nushackers.org	US
452094	amazon.com	GB
8987650	facebook.com	GB
4897686	nushackers.org	KR
8105935	nushackers.org	SG
9539776	youtube.com	SG
1778795	amazon.com	GB
3485669	youtube.com	US
9930226	youtube.com	KR
8371857	google.com	JP
1794106	facebook.com	JP
5668002	youtube.com	KR
9754753	github.com	GB
3310156	youtube.com	SG
5227652	nushackers.org	US
5595788	facebook.com	US
3003568	facebook.com	GB
8913046	youtube.com	KR
1117968	youtube.com	KR
2926663	amazon.com	JP
6640117	amazon.com	SG
7831915	github.com	GB
5624854	youtube.com	SG
671135	nushackers.org	GB
4337762	reddit.com	KR
8131437	amazon.com	SG
7435824	reddit.com	SG
2741743	reddit.com	US
3832030	amazon.com	JP
1851120	github.com	GB
1506856	reddit.com	KR
9202916	amazon.com	US
6930823	github.com	GB
9807660	facebook.com	KR
6679803	reddit.com	GB
7177648	github.com	KR
3515232	google.com	JP
5108568	youtube.com	US
6682770	reddit.com	JP
8774977	facebook.com	GB
9023635	reddit.com	US
3962981	google.com	SG
169340	youtube.com	JP
3033107	reddit.com	KR
8337860	nushackers.org	GB
6335128	amazon.com	US
6587905	github.com	US
2624107	google.com	GB
5106066	facebook.com	JP
5660297	github.com	US
9840576	google.com	KR
3531641	nushackers.org	JP
541382	reddit.com	KR
8406918	reddit.com	JP
7611788	nushackers.org	SG
6358491	facebook.com	JP
62217	facebook.com	GB
7627719	reddit.com	US
7193924	amazon.com	KR
7719851	nushackers.org	KR
373555	google.com	GB
6432755	youtube.com	SG
8173703	reddit.com	JP
1583227	google.com	US
2702792	nushackers.org	SG
4100713	google.com	SG
3142768	github.com	KR
2355950	youtube.com	KR
7343762	youtube.com	KR
4150072	youtube.com	GB
3761952	amazon.com	JP
4591970	facebook.com	KR
826688	youtube.com	SG
7740204	nushackers.org	GB
7775479	github.com	KR
4893478	amazon.com	GB
9889845	github.com	KR
9507864	youtube.com	US
6289113	amazon.com	US
1767447	facebook.com	US
5480619	amazon.com	GB
9045985	youtube.com	US
4816185	reddit.com	KR
7058377	reddit.com	SG
4970952	amazon.com	SG
5186192	facebook.com	US
7129225	github.com	KR
4969697	github.com	GB
8635810	reddit.com	JP
6705649	github.com	KR
3088475	facebook.com	JP
4263497	facebook.com	SG
2643843	reddit.com	JP
2581730	github.com	KR
667033	amazon.com	GB
7421702	github.com	KR
2955504	reddit.com	US
9990047	youtube.com	US
640066	reddit.com	US
3054761	github.com	GB
7355608	facebook.com	SG
717236	reddit.com	US
9525773	amazon.com	JP
3015661	facebook.com	SG
339265	facebook.com	GB
7330584	amazon.com	KR
3181752	nushackers.org	GB
1177332	github.com	KR
4465727	facebook.com	US
3811818	github.com	KR
9230578	nushackers.org	GB
4291848	amazon.com	GB
9865494	facebook.com	SG
2738573	amazon.com	KR
908287	reddit.com	GB
3023968	youtube.com	SG
7188631	facebook.com	US
7696793	google.com	SG
55994	facebook.com	GB
9498551	amazon.com	KR
2648287	amazon.com	SG
4883627	google.com	US
2121530	facebook.com	JP
2865669	facebook.com	GB
1168063	reddit.com	US
9629720	google.com	GB
911110	amazon.com	JP
4890267	amazon.com	SG
6993748	google.com	KR
7836133	youtube.com	GB
8406758	github.com	US
2735133	facebook.com	JP
9780832	nushackers.org	US
1425298	facebook.com	SG
8092558	google.com	GB
8295290	github.com	KR
4317490	nushackers.org	GB
9796639	nushackers.org	GB
3880128	reddit.com	JP
3983270	amazon.com	SG
4395439	amazon.com	US
2522740	reddit.com	JP
7272715	github.com	KR
9801466	reddit.com	US
8681741	google.com	US
6996318	youtube.com	SG
4800592	github.com	SG
1787976	github.com	GB
6048614	nushackers.org	GB
8719520	amazon.com	US
3424937	reddit.com	US
4169979	github.com	GB
5712362	youtube.com	SG
2333674	google.com	US
9196359	facebook.com	US
9003083	reddit.com	GB
4545493	amazon.com	US
9905477	nushackers.org	JP
5752514	reddit.com	JP
5469237	nushackers.org	US
589935	facebook.com	JP
5853613	google.com	GB
5118515	facebook.com	GB
5539471	nushackers.org	US
3575238	github.com	JP
5502053	facebook.com	US
9214443	google.com	GB
9342798	facebook.com	KR
536913	youtube.com	KR
1201867	reddit.com	KR
794409	nushackers.org	SG
1671822	youtube.com	GB
7601848	youtube.com	KR
8296633	google.com	KR
8973701	google.com	KR
3378484	nushackers.org	KR
6387628	facebook.com	SG
6086042	google.com	US
2249996	facebook.com	SG
1899969	amazon.com	KR
217718	youtube.com	GB
9359073	google.com	US
4840332	github.com	GB
5533130	github.com	KR
153976	facebook.com	US
8767151	reddit.com	SG
8198454	facebook.com	SG
9065717	github.com	KR
9636535	facebook.com	JP
2167723	nushackers.org	JP
1665905	github.com	KR
1645473	github.com	SG
3168768	amazon.com	KR
4807860	google.com	GB
9720976	youtube.com	KR
7324	reddit.com	KR
5130984	reddit.com	SG
8245428	amazon.com	US
3490189	nushackers.org	SG
3806616	google.com	JP
4414256	github.com	GB
2834538	nushackers.org	JP
3686038	facebook.com	US
226859	reddit.com	GB
8565204	facebook.com	GB
9163343	amazon.com	US
6609954	amazon.com	GB
5067421	amazon.com	JP
2447036	nushackers.org	SG
6874494	youtube.com	GB
7650845	reddit.com	SG
6718464	reddit.com	GB
5456101	nushackers.org	SG
2170226	google.com	KR
6667585	google.com	US
4045694	nushackers.org	SG
4862085	amazon.com	KR
5116575	nushackers.org	SG
1922417	youtube.com	JP
5371895	reddit.com	KR
1992176	reddit.com	US
5847031	google.com	US
8052656	github.com	JP
6266422	amazon.com	JP
9421961	github.com	JP
1587663	reddit.com	GB
3607984	facebook.com	SG
939656	youtube.com	GB
38123	facebook.com	JP
3707119	youtube.com	SG
9953949	reddit.com	JP
2989464	google.com	GB
1680989	nushackers.org	SG
6891394	reddit.com	GB
4031876	google.com	JP
3459756	youtube.com	GB
4972316	youtube.com	JP
6747336	nushackers.org	US
7834520	reddit.com	SG
8133167	github.com	GB
4173059	google.com	SG
6198381	amazon.com	SG
1900863	nushackers.org	JP
6590566	google.com	GB
8569749	nushackers.org	KR
875754	nushackers.org	JP
3049500	reddit.com	JP
1770404	reddit.com	SG
6634096	google.com	GB
6970851	amazon.com	SG
8162050	github.com	KR
1244960	nushackers.org	US
9415938	amazon.com	GB
4901206	google.com	JP
4905245	nushackers.org	US
2275308	facebook.com	KR
1008846	youtube.com	GB
3309300	facebook.com	GB
4087033	reddit.com	SG
2271123	amazon.com	GB
785519	github.com	KR
345368	nushackers.org	US
6381527	nushackers.org	JP
8068199	google.com	KR
3011744	amazon.com	GB
367911	youtube.com	KR
3498490	amazon.com	KR
5676725	reddit.com	GB
7835645	facebook.com	GB
296127	facebook.com	SG
5096756	amazon.com	JP
8107561	nushackers.org	JP
1237766	nushackers.org	JP
6853930	github.com	US
7384431	amazon.com	US
983703	youtube.com	JP
8948936	google.com	US
6740334	github.com	SG
6989006	google.com	SG
7045053	reddit.com	KR
5854783	facebook.com	SG
8060374	amazon.com	JP
538975	facebook.com	US
8828112	reddit.com	GB
332677	youtube.com	KR
6373697	nushackers.org	SG
7423110	facebook.com	KR
5543649	amazon.com	GB
7037645	reddit.com	GB
3757595	amazon.com	JP
9655319	reddit.com	GB
1869467	amazon.com	JP
4596167	reddit.com	SG
5141541	github.com	KR
9508830	nushackers.org	US
2940269	amazon.com	SG
4395597	nushackers.org	KR
9517321	youtube.com	KR
4083201	facebook.com	US
3094549	amazon.com	JP
2549847	facebook.com	JP
9646234	youtube.com	SG
9876089	google.com	US
5842254	github.com	JP
1441966	reddit.com	JP
7231664	youtube.com	GB
1488333	google.com	SG
4971194	github.com	US
8424149	amazon.com	SG
6419419	youtube.com	SG
8872082	github.com	GB
2517290	youtube.com	KR
4535626	reddit.com	KR
7647114	youtube.com	JP
5127424	youtube.com	US
2851328	nushackers.org	KR
9002862	reddit.com	GB
3705226	reddit.com	JP
3838330	youtube.com	JP
4203685	github.com	US
690574	google.com	GB
8694518	youtube.com	SG
7420452	reddit.com	GB
8893033	google.com	US
6132909	amazon.com	KR
4464477	github.com	US
3293317	google.com	JP
9626905	nushackers.org	JP
5835245	amazon.com	KR
3398349	google.com	GB
5468701	google.com	JP
5944436	amazon.com	SG
2616469	reddit.com	KR
280920	google.com	US
7453236	reddit.com	SG
2944319	youtube.com	KR
3932450	google.com	SG
4183584	reddit.com	US
3844729	reddit.com	US
9899044	youtube.com	US
8365939	reddit.com	GB
6944638	amazon.com	SG
4342428	github.com	KR
3966235	facebook.com	KR
4463021	amazon.com	KR
5370606	google.com	GB
5690969	google.com	JP
1331914	reddit.com	JP
9798018	youtube.com	GB
2278582	github.com	US
8594923	github.com	SG
9594702	youtube.com	JP
7938340	youtube.com	US
7280875	facebook.com	KR
5797747	reddit.com	US
3551394	amazon.com	JP
8232912	youtube.com	SG
2934224	google.com	SG
8479620	google.com	SG
3012055	nushackers.org	KR
7521214	youtube.com	KR
3608525	amazon.com	SG
2050552	facebook.com	KR
1343184	amazon.com	US
8697755	nushackers.org	JP
7547762	google.com	JP
543325	facebook.com	GB
6785517	facebook.com	GB
9685365	amazon.com	JP
1471294	nushackers.org	KR
5276430	github.com	KR
3191352	amazon.com	JP
6441907	amazon.com	JP
5134549	amazon.com	KR
7704678	amazon.com	US
8984477	nushackers.org	SG
7418010	reddit.com	US
6800599	nushackers.org	SG
195651	nushackers.org	GB
4187304	google.com	KR
5666010	reddit.com	JP
5576231	facebook.com	KR
8375321	youtube.com	JP
6571084	nushackers.org	GB
1582361	github.com	US
8022693	google.com	GB
6814188	reddit.com	GB
8364750	reddit.com	KR
216509	youtube.com	KR
6605568	google.com	KR
3556390	facebook.com	SG
2591940	google.com	GB
2855701	amazon.com	US
3020020	amazon.com	GB
5298993	amazon.com	GB
4095147	google.com	JP
7511069	facebook.com	SG
5249186	amazon.com	KR
275307	amazon.com	US
6175079	nushackers.org	US
9200219	youtube.com	KR
1208054	nushackers.org	KR
3310179	amazon.com	JP
9148987	reddit.com	GB
142606	reddit.com	SG
2176598	google.com	US
2578747	reddit.com	US
1635323	facebook.com	JP
6012490	youtube.com	US
5980606	nushackers.org	SG
5491930	amazon.com	SG
8994110	reddit.com	SG
7279157	reddit.com	GB
9577622	amazon.com	GB
4556346	github.com	SG
582660	amazon.com	JP
2822792	reddit.com	JP
7344376	google.com	SG
4301048	github.com	JP
6329005	github.com	GB
6662826	reddit.com	US
8755494	amazon.com	KR
1070567	amazon.com	JP
2648690	youtube.com	SG
8431116	youtube.com	KR
6150925	reddit.com	GB
5528084	github.com	JP
4543973	nushackers.org	KR
2445178	amazon.com	JP
1896749	google.com	SG
3739409	youtube.com	US
6582900	facebook.com	GB
9697163	facebook.com	JP
3120029	github.com	US
8624676	reddit.com	SG
1541498	google.com	SG
2453408	github.com	GB
2510642	google.com	SG
8059787	facebook.com	JP
4302588	amazon.com	GB
1091181	github.com	JP
2853738	reddit.com	SG
2553370	google.com	KR
4392986	amazon.com	SG
9777657	nushackers.org	SG
3337725	facebook.com	US
7252995	facebook.com	GB
1405459	reddit.com	JP
7608770	facebook.com	KR
6413379	reddit.com	US
7283085	reddit.com	US
942436	youtube.com	GB
7160418	reddit.com	SG
5979808	amazon.com	JP
7027012	nushackers.org	GB
8395704	facebook.com	KR
4138342	facebook.com	KR
60473	reddit.com	KR
8983697	nushackers.org	GB
5034762	github.com	US
1522754	github.com	US
3371494	google.com	KR
32126	youtube.com	SG
7833735	youtube.com	JP
7134581	reddit.com	US
4948114	nushackers.org	JP
6786441	facebook.com	KR
8649029	amazon.com	US
8096423	nushackers.org	KR
6439628	google.com	JP
9067282	google.com	GB
6263130	google.com	US
8486492	nushackers.org	GB
1530634	github.com	US
7720368	youtube.com	SG
899278	google.com	JP
6124719	reddit.com	JP
6605725	github.com	GB
3614057	amazon.com	GB
5386124	github.com	GB
7332919	amazon.com	KR
5306204	github.com	US
8654802	facebook.com	US
4621930	facebook.com	KR
5736390	reddit.com	GB
6659806	github.com	KR
8848027	reddit.com	GB
687430	nushackers.org	GB
7720461	github.com	GB
1072796	youtube.com	JP
2405348	github.com	SG
7491220	amazon.com	JP
1093049	nushackers.org	JP
6416000	nushackers.org	US
6510809	nushackers.org	SG
3996414	reddit.com	JP
9877796	facebook.com	SG
6048134	nushackers.org	KR
527987	youtube.com	GB
3252002	nushackers.org	KR
1298206	reddit.com	JP
2582863	nushackers.org	GB
8036375	facebook.com	SG
327055	github.com	JP
1797576	youtube.com	GB
587248	google.com	US
9117372	facebook.com	JP
4358007	nushackers.org	JP
1567401	facebook.com	US
53647	facebook.com	US
8390335	facebook.com	GB
4325276	nushackers.org	KR
3555647	nushackers.org	KR
3448645	github.com	GB
5996634	facebook.com	GB
9950241	google.com	GB
1666660	facebook.com	JP
7223615	google.com	GB
2308931	google.com	GB
9004309	github.com	US
9693595	facebook.com	US
8889288	facebook.com	KR
5589512	facebook.com	JP
7158190	github.com	KR
3509871	nushackers.org	SG
8734013	reddit.com	GB
9636577	nushackers.org	US
5674720	reddit.com	GB
124277	github.com	GB
4188696	facebook.com	SG
4751010	google.com	US
4861317	nushackers.org	GB
1903019	youtube.com	GB
4871536	google.com	SG
6964041	nushackers.org	SG
9740048	google.com	GB
9653717	facebook.com	KR
4805164	google.com	KR
8720719	reddit.com	SG
8787527	amazon.com	JP
8533361	amazon.com	SG
4980565	amazon.com	SG
560826	github.com	SG
961846	facebook.com	GB
8209340	google.com	JP
6636408	youtube.com	US
448263	google.com	KR
2193204	reddit.com	GB
1166800	github.com	SG
6661380	reddit.com	JP
2455086	google.com	JP
7029768	reddit.com	GB
1179491	facebook.com	JP
5937801	amazon.com	US
6684845	amazon.com	JP
3140381	youtube.com	GB
4023727	nushackers.org	GB
5725281	nushackers.org	SG
5239492	google.com	GB
6663428	amazon.com	SG
38831	amazon.com	GB
2354761	amazon.com	SG
814631	nushackers.org	GB
2846661	amazon.com	GB
863908	reddit.com	GB
446271	github.com	JP
2595371	github.com	KR
3545158	youtube.com	JP
6581790	youtube.com	JP
5595772	reddit.com	GB
3844791	github.com	KR
3355661	facebook.com	US
162318	amazon.com	US
4719023	github.com	KR
1702357	amazon.com	GB
5338634	github.com	US
4654927	github.com	SG
3888170	youtube.com	GB
9383961	amazon.com	US
5246129	youtube.com	US
216098	github.com	US
5533396	youtube.com	JP
1847402	reddit.com	JP
4757442	reddit.com	KR
6762008	youtube.com	GB
1690683	youtube.com	JP
8374229	reddit.com	JP
4072100	nushackers.org	KR
235039	facebook.com	US
5215219	facebook.com	US
5551014	amazon.com	GB
1922025	amazon.com	GB
4779826	google.com	US
1799971	github.com	GB
7161776	nushackers.org	JP
2896751	google.com	SG
6215557	google.com	GB
442054	youtube.com	JP
7131890	github.com	SG
5912370	amazon.com	SG
4839796	facebook.com	GB
6958850	google.com	GB
8036509	reddit.com	KR
3627248	google.com	SG
7265939	reddit.com	KR
2816076	amazon.com	KR
2139742	google.com	GB
5944210	youtube.com	JP
2427738	nushackers.org	US
962229	nushackers.org	KR
7664376	nushackers.org	KR
9186043	facebook.com	KR
9347321	google.com	SG
3623581	facebook.com	GB
3287072	youtube.com	US
9623787	google.com	SG
1240681	facebook.com	SG
3857913	youtube.com	GB
7681811	amazon.com	SG
4114484	youtube.com	JP
8229474	youtube.com	GB
268629	github.com	JP
7713089	amazon.com	SG
874708	nushackers.org	GB
3840450	reddit.com	US
2895031	nushackers.org	SG
3815954	google.com	KR
3619297	facebook.com	GB
8163600	nushackers.org	GB
5512910	google.com	KR
5096621	google.com	JP
7343847	google.com	SG
9139977	nushackers.org	US
7536353	reddit.com	SG
4512390	amazon.com	GB
9864289	nushackers.org	GB
4030522	facebook.com	KR
2649628	reddit.com	KR
6817362	nushackers.org	KR
7552921	nushackers.org	JP
8619837	facebook.com	GB
4708588	youtube.com	JP
792214	google.com	JP
4095316	nushackers.org	JP
102330	youtube.com	SG
1253189	youtube.com	SG
3700438	amazon.com	JP
7757105	youtube.com	JP
1953742	facebook.com	SG
9277036	reddit.com	SG
6907779	google.com	GB
2117560	github.com	GB
3161263	youtube.com	KR
1296041	google.com	GB
5088255	google.com	US
2099588	amazon.com	KR
6416363	amazon.com	GB
2516722	nushackers.org	JP
9753001	github.com	GB
6712705	google.com	JP
2585860	google.com	US
1250712	amazon.com	KR
9671052	reddit.com	KR
5014986	facebook.com	KR
6360964	google.com	GB
449820	youtube.com	US
9990460	nushackers.org	SG
4650036	youtube.com	KR
6593416	amazon.com	KR
7431043	amazon.com	US
8510828	google.com	JP
6272262	youtube.com	JP
9747849	facebook.com	KR
5140588	nushackers.org	GB
7533735	github.com	US
396932	google.com	GB
3736968	google.com	JP
1811208	amazon.com	JP
8257680	nushackers.org	GB
7558560	nushackers.org	US
9470393	github.com	GB
5874381	nushackers.org	GB
5454567	amazon.com	JP
9912761	nushackers.org	KR
7514876	facebook.com	SG
8091579	github.com	US
6338113	amazon.com	US
8653802	facebook.com	JP
7638976	github.com	KR
583785	nushackers.org	US
4538099	amazon.com	JP
7001207	amazon.com	SG
5537566	youtube.com	GB
603600	reddit.com	SG
5011162	reddit.com	US
9950318	amazon.com	KR
2516500	reddit.com	US
8665804	reddit.com	JP
6750477	github.com	KR
7684524	amazon.com	JP
832193	reddit.com	KR
3241042	nushackers.org	SG
6009130	github.com	SG
9707000	nushackers.org	GB
7088018	google.com	US
3935952	facebook.com	GB
3677782	google.com	SG
7196742	amazon.com	JP
1462228	nushackers.org	US
1845862	amazon.com	JP
3353613	youtube.com	GB
8316322	google.com	US
126353	youtube.com	JP
9749957	nushackers.org	GB
4869507	nushackers.org	US
7604912	nushackers.org	SG
9542103	reddit.com	US
3602608	github.com	GB
3428895	amazon.com	KR
7247882	reddit.com	GB
1485142	reddit.com	US
7239119	amazon.com	GB
4764455	github.com	SG
2985871	amazon.com	KR
2933395	facebook.com	SG
4343716	github.com	SG
1563663	nushackers.org	SG
190020	amazon.com	GB
6677681	amazon.com	US
6022518	github.com	JP
1060609	reddit.com	US
1672520	facebook.com	JP
2813235	facebook.com	US
8877461	nushackers.org	US
7809986	nushackers.org	SG
3938333	nushackers.org	SG
9325338	google.com	SG
690372	reddit.com	SG
2028814	nushackers.org	US
5865951	amazon.com	KR
4048186	amazon.com	US
8001438	facebook.com	JP
8748421	google.com	GB
7400630	github.com	SG
9308487	youtube.com	US
6978853	reddit.com	GB
6620537	nushackers.org	KR
560906	google.com	JP
361263	youtube.com	JP
1439793	amazon.com	KR
2984217	nushackers.org	KR
8061633	youtube.com	US
8883034	github.com	KR
138682	google.com	JP
919922	reddit.com	JP
5313535	facebook.com	JP
161538	reddit.com	SG
2827795	github.com	US
2254087	amazon.com	KR
9826744	google.com	KR
5297484	youtube.com	US
4631186	github.com	SG
6980862	amazon.com	US
4237824	nushackers.org	JP
2698209	facebook.com	KR
615410	amazon.com	US
5007469	amazon.com	SG
8588133	google.com	SG
8040563	youtube.com	KR
7988788	youtube.com	GB
4944098	reddit.com	SG
2244167	facebook.com	SG
9494872	reddit.com	SG
7638026	facebook.com	SG
8080823	reddit.com	SG
9789630	youtube.com	US
3459236	facebook.com	SG
3280805	github.com	KR
1431602	facebook.com	GB
8290768	google.com	SG
6893167	youtube.com	US
3471946	google.com	JP
2257959	youtube.com	JP
1735616	amazon.com	US
1082377	google.com	SG
9597972	google.com	US
6969009	nushackers.org	SG
1893501	nushackers.org	GB
3842454	facebook.com	JP
3642929	nushackers.org	JP
1308747	youtube.com	KR
1149212	youtube.com	GB
6542675	google.com	SG
3000675	google.com	JP
2338472	reddit.com	KR
2650806	amazon.com	SG
3632247	facebook.com	JP
1689209	amazon.com	SG
1557029	google.com	GB
9323280	youtube.com	SG
5504036	google.com	SG
9296656	reddit.com	US
715210	amazon.com	GB
4460455	github.com	GB
3305911	google.com	US
8099615	nushackers.org	GB
1868251	facebook.com	GB
3279364	facebook.com	US
9321007	google.com	GB
549811	github.com	US
9528053	google.com	SG
7426943	facebook.com	SG
9786615	nushackers.org	KR
1889477	amazon.com	JP
478482	facebook.com	KR
6300936	reddit.com	KR
6613761	facebook.com	GB
6644091	nushackers.org	GB
3485881	nushackers.org	JP
2279582	facebook.com	US
9540976	github.com	GB
6059421	amazon.com	SG
491395	facebook.com	US
1249536	google.com	JP
7964115	github.com	JP
6439102	google.com	GB
5920337	reddit.com	JP
5864940	nushackers.org	SG
2935323	github.com	JP
6487390	google.com	US
4295171	github.com	GB
3664694	facebook.com	US
8146060	github.com	GB
347354	youtube.com	SG
8548277	youtube.com	KR
7903544	amazon.com	KR
7398070	reddit.com	KR
9582566	reddit.com	JP
4843732	github.com	JP
4207210	amazon.com	US
3168685	google.com	GB
580033	youtube.com	JP
9866516	github.com	KR
3319105	google.com	JP
1612001	facebook.com	GB
7724521	reddit.com	GB
8756146	amazon.com	KR
2903159	amazon.com	JP
901158	google.com	JP
3152586	youtube.com	KR
9314851	google.com	US
9852164	github.com	KR
7518496	facebook.com	JP
547743	github.com	US
2064165	facebook.com	SG
8080214	facebook.com	JP
2746507	facebook.com	KR
2995461	facebook.com	SG
9964358	amazon.com	SG
4538484	youtube.com	JP
2207665	reddit.com	US
3219432	facebook.com	JP
4151531	google.com	US
8630389	amazon.com	SG
534326	youtube.com	JP
8099154	reddit.com	GB
8320649	amazon.com	GB
876582	youtube.com	KR
358974	nushackers.org	US
308848	amazon.com	SG
9665777	facebook.com	GB
3212612	nushackers.org	GB
2041368	google.com	US
2815475	reddit.com	US
3865708	google.com	SG
1745434	google.com	US
8949162	youtube.com	KR
5367995	facebook.com	JP
3111646	google.com	JP
5682729	google.com	JP
4851422	google.com	JP
533865	github.com	GB
7690487	nushackers.org	GB
9290701	youtube.com	KR
7360857	amazon.com	JP
697964	reddit.com	KR
5086810	reddit.com	KR
9101437	google.com	GB
9508778	nushackers.org	SG
6330649	amazon.com	JP
8310673	amazon.com	GB
2860417	reddit.com	GB
546112	google.com	JP
6271126	youtube.com	US
\.


--
-- Data for Name: nus_students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY nus_students (student_id, matric_date, study_length, faculty, cap) FROM stdin;
A0271884J	2012-10-05	3 years 6 mons	Engineering	3.83999991
A0224649V	2010-02-22	3 years 4 mons	Engineering	4.42000008
A0075372M	2015-02-21	3 years 8 mons	Arts	3.36999989
A0135187E	2012-12-24	4 years 9 mons	Engineering	3.80999994
A0840912I	2010-01-28	4 years 10 mons	Science	4.71999979
A0416464D	2012-05-02	3 years 11 mons	Computing	4.21000004
A0448916X	2015-08-05	4 years 2 mons	Engineering	3.55999994
A0331311F	2010-06-05	4 years 6 mons	Engineering	4.71999979
A0602507X	2010-03-24	4 years 4 mons	Arts	3.49000001
A0958745N	2011-02-11	3 years 3 mons	Engineering	4.38000011
A0743130O	2011-02-01	4 years 6 mons	Arts	3.25
A0960432E	2015-05-06	4 years 9 mons	Computing	3.16000009
A0970716J	2012-12-10	4 years 9 mons	Arts	4.82000017
A0836883D	2010-04-24	3 years 6 mons	Computing	4.98000002
A0213270Q	2015-05-07	3 years 5 mons	Engineering	3.1099999
A0716911T	2011-03-22	3 years 3 mons	Engineering	4.17000008
A0993233A	2010-03-01	4 years 6 mons	Arts	4.90999985
A0314273U	2010-12-07	4 years 11 mons	Engineering	4.96000004
A0109417Q	2012-09-09	5 years	Engineering	3.66000009
A0279983D	2013-03-21	3 years 5 mons	Arts	4.05000019
A0598324R	2011-02-16	3 years 2 mons	Computing	3.0999999
A0020488J	2011-02-15	4 years 6 mons	Engineering	3.50999999
A0110221G	2010-12-11	4 years 6 mons	Engineering	4.13000011
A0077029W	2011-07-06	3 years 1 mon	Computing	4.23999977
A0391281Z	2011-03-07	3 years 1 mon	Computing	4.63000011
A0660393R	2013-04-23	3 years 2 mons	Computing	3.02999997
A0349351F	2015-04-04	5 years	Science	3.63000011
A0586979H	2010-03-11	4 years 11 mons	Science	3.67000008
A0143416G	2012-03-23	4 years 3 mons	Engineering	3.43000007
A0396524K	2015-01-11	3 years 1 mon	Engineering	3.01999998
A0157467X	2013-02-10	3 years 6 mons	Arts	4.75
A0152864G	2011-04-12	4 years	Arts	3.79999995
A0894673S	2013-10-15	3 years 11 mons	Science	3.03999996
A0015551N	2013-09-04	4 years 9 mons	Engineering	4.11999989
A0366931N	2013-07-08	3 years 5 mons	Arts	4.46999979
A0181854J	2010-09-28	4 years 1 mon	Computing	3.43000007
A0969708Q	2011-07-24	3 years 10 mons	Engineering	4.55000019
A0146271V	2011-07-27	4 years 10 mons	Science	3.66000009
A0447708J	2010-04-20	3 years 1 mon	Science	3.51999998
A0770239Z	2012-10-20	4 years	Computing	3.28999996
A0341797R	2013-09-21	4 years	Computing	3.69000006
A0940946P	2011-04-21	3 years 8 mons	Computing	4.8499999
A0846495G	2010-09-16	3 years 7 mons	Arts	4.71000004
A0985423H	2010-03-09	3 years 6 mons	Science	3.06999993
A0115489V	2015-06-14	4 years 6 mons	Arts	3.5
A0360918W	2012-09-23	4 years 2 mons	Computing	3.75
A0360574T	2012-08-09	3 years 7 mons	Engineering	3.72000003
A0119081F	2014-11-09	3 years 1 mon	Engineering	4.63999987
A0821694S	2014-06-20	3 years 11 mons	Science	4.15999985
A0972522D	2011-06-25	4 years	Computing	4.57999992
A0306697E	2015-08-20	4 years 3 mons	Computing	3.23000002
A0431723G	2013-06-04	3 years 2 mons	Computing	4.05000019
A0632227Z	2015-12-18	3 years 1 mon	Science	3.95000005
A0476154V	2014-03-09	4 years 5 mons	Computing	4.88999987
A0240357E	2011-01-04	3 years 7 mons	Science	4.23999977
A0047746R	2012-01-07	4 years 9 mons	Engineering	3.83999991
A0070683J	2014-01-09	4 years 8 mons	Arts	3.71000004
A0831828F	2015-06-09	3 years 6 mons	Science	3.69000006
A0363738Z	2014-11-23	3 years 4 mons	Computing	3.56999993
A0782489C	2014-07-26	3 years 8 mons	Computing	3.42000008
A0181667M	2010-06-02	3 years 2 mons	Science	4.25
A0331465I	2011-11-10	4 years	Arts	3.99000001
A0181453D	2015-02-15	3 years 4 mons	Computing	3.45000005
A0697752I	2012-09-03	4 years 5 mons	Science	3.13000011
A0841910Y	2014-02-17	4 years 3 mons	Computing	4.38000011
A0633875Z	2014-08-24	4 years 4 mons	Computing	3.47000003
A0717626I	2014-05-21	3 years 9 mons	Computing	4.78000021
A0933522U	2015-06-03	3 years 5 mons	Arts	3.74000001
A0186790P	2015-10-07	4 years 4 mons	Arts	4.42999983
A0491575L	2013-06-11	3 years 5 mons	Computing	3.76999998
A0685634H	2015-02-20	3 years 5 mons	Computing	3.73000002
A0327192T	2014-01-11	3 years 5 mons	Arts	3.5999999
A0089082A	2013-12-19	3 years 4 mons	Engineering	4.98000002
A0450395B	2011-03-17	4 years 8 mons	Computing	3.17000008
A0786964L	2014-04-26	3 years 5 mons	Arts	3.13000011
A0426434L	2013-01-05	4 years 1 mon	Arts	4.28999996
A0693069N	2013-09-02	5 years	Science	4.80999994
A0449683Q	2011-01-08	3 years 3 mons	Engineering	3.78999996
A0078033C	2015-06-18	3 years 1 mon	Science	4.86999989
A0966243K	2012-08-19	4 years 11 mons	Computing	4.34000015
A0458564C	2015-09-23	3 years 2 mons	Arts	4.21000004
A0586933Z	2015-07-18	3 years 2 mons	Arts	3.8599999
A0488623G	2015-07-14	4 years	Computing	3.88000011
A0987903Z	2014-12-02	3 years 8 mons	Arts	4.48000002
A0196113E	2014-08-03	4 years 8 mons	Science	3.98000002
A0376682G	2013-12-21	3 years 1 mon	Computing	4.01000023
A0650026N	2010-08-23	4 years 8 mons	Engineering	3.31999993
A0697160X	2012-10-26	3 years 9 mons	Engineering	3.27999997
A0617410N	2015-04-11	3 years 2 mons	Engineering	4.11999989
A0048881A	2010-05-17	4 years 6 mons	Computing	4.75
A0361719V	2012-11-13	3 years 9 mons	Science	4.73000002
A0510911D	2010-10-12	4 years 3 mons	Arts	4.82999992
A0348586Z	2012-08-26	4 years 7 mons	Science	3.57999992
A0208849L	2010-11-22	4 years 1 mon	Computing	4.88000011
A0109458H	2012-07-22	3 years 7 mons	Computing	4.86999989
A0146682J	2010-03-09	5 years	Arts	4.30999994
A0138402D	2014-11-09	3 years 5 mons	Computing	4.05999994
A0002430B	2011-12-28	3 years 9 mons	Arts	4.51999998
A0002862H	2015-01-19	4 years 10 mons	Computing	3.31999993
A0629542H	2011-11-16	4 years 11 mons	Computing	3.56999993
A0863723O	2015-05-25	4 years 5 mons	Science	4.67999983
A0938746Z	2015-05-17	3 years 9 mons	Engineering	3.52999997
A0467317M	2014-11-12	3 years 9 mons	Engineering	4.34000015
A0869880H	2014-02-21	4 years 10 mons	Science	3.70000005
A0608482T	2012-12-26	3 years 3 mons	Computing	4.19999981
A0661937I	2015-10-20	3 years 11 mons	Science	4.03999996
A0333632K	2013-07-18	4 years 10 mons	Computing	4.67999983
A0830034E	2014-01-27	3 years 5 mons	Arts	3.79999995
A0650342Z	2014-03-20	3 years 8 mons	Science	3.11999989
A0566189K	2014-02-18	3 years 11 mons	Arts	4.46999979
A0485402H	2011-03-15	3 years 3 mons	Computing	3.29999995
A0922907B	2012-10-13	4 years 7 mons	Engineering	3.9000001
A0042790V	2013-06-17	4 years 5 mons	Science	3.92000008
A0092207G	2010-06-05	4 years 5 mons	Computing	3.8499999
A0762402D	2013-03-17	3 years 8 mons	Computing	3.1099999
A0716281Y	2010-01-13	3 years 5 mons	Engineering	3.06999993
A0538342J	2015-03-26	3 years 5 mons	Engineering	3.80999994
A0700784N	2013-01-17	4 years 6 mons	Science	4.23000002
A0822386J	2011-11-14	3 years 6 mons	Engineering	4.07000017
A0567445A	2013-01-27	4 years 4 mons	Science	4.92999983
A0277881J	2012-03-07	4 years 5 mons	Science	3.66000009
A0917697P	2014-03-28	3 years 4 mons	Science	4.44000006
A0321722J	2015-02-20	4 years	Science	4.03000021
A0842054G	2012-01-18	4 years 9 mons	Science	4.30000019
A0060804Y	2014-05-27	3 years 4 mons	Arts	3.44000006
A0075920K	2014-05-03	3 years 11 mons	Arts	4.96999979
A0670124T	2013-01-21	3 years 5 mons	Arts	4.46000004
A0024691R	2015-01-09	3 years 2 mons	Science	3.71000004
A0935906Y	2012-11-20	3 years 6 mons	Computing	3.50999999
A0262435O	2015-05-24	4 years 5 mons	Science	3.08999991
A0800892T	2014-05-04	4 years	Arts	4.71999979
A0885528U	2010-03-17	3 years 3 mons	Arts	3.75999999
A0892355J	2010-09-12	3 years 3 mons	Science	4.28000021
A0009950K	2015-07-28	4 years 1 mon	Science	4.53000021
A0544217E	2013-05-08	4 years 6 mons	Science	3.92000008
A0651013V	2015-07-23	4 years 3 mons	Engineering	4.6500001
A0555933Y	2013-02-05	4 years 8 mons	Science	4.05000019
A0940272P	2014-11-28	4 years 5 mons	Science	4.07000017
A0151084V	2014-05-02	4 years 5 mons	Arts	4.55000019
A0990327N	2012-04-21	4 years 2 mons	Computing	3.73000002
A0863805Y	2010-01-18	4 years 4 mons	Engineering	3.22000003
A0266066U	2013-06-03	4 years 10 mons	Engineering	4.36000013
A0727134G	2010-03-19	3 years 3 mons	Arts	4.76999998
A0585986E	2010-03-14	3 years 4 mons	Arts	3.83999991
A0406268T	2015-01-09	3 years 10 mons	Science	3.57999992
A0645481Q	2013-07-02	3 years 3 mons	Computing	4.21999979
A0799246U	2011-02-16	3 years 3 mons	Arts	4.13000011
A0908646P	2014-03-14	4 years	Science	3.68000007
A0409876L	2015-01-06	4 years 8 mons	Science	4.11999989
A0366452M	2015-09-05	4 years 9 mons	Engineering	3.5
A0230822K	2012-05-17	4 years 7 mons	Arts	4.63999987
A0604637Q	2012-04-16	3 years 1 mon	Arts	4.48000002
A0585390Q	2010-05-17	3 years 10 mons	Science	3.33999991
A0203573T	2014-06-20	4 years 8 mons	Science	3.38000011
A0498860P	2010-06-01	5 years	Arts	3.66000009
A0117125Q	2010-12-02	4 years 11 mons	Arts	4.73999977
A0009256Q	2015-02-19	3 years 7 mons	Arts	4.71000004
A0353578W	2011-01-07	3 years 7 mons	Computing	3.16000009
A0024961D	2010-07-20	3 years 8 mons	Computing	3.75999999
A0381405V	2013-04-18	3 years 9 mons	Computing	4.71000004
A0438232V	2011-05-23	4 years 1 mon	Engineering	4.19999981
A0565317R	2010-11-08	3 years 11 mons	Engineering	3.38000011
A0332777X	2015-11-27	4 years 11 mons	Engineering	3.26999998
A0194906J	2011-05-06	3 years 9 mons	Engineering	4.53999996
A0256921N	2015-01-17	3 years 2 mons	Arts	4.28000021
A0188956N	2014-06-28	4 years 3 mons	Arts	3.5999999
A0511670W	2011-06-17	4 years 5 mons	Computing	4.92000008
A0030040A	2014-12-21	4 years 6 mons	Engineering	4.53999996
A0782149R	2015-02-06	4 years 5 mons	Arts	3.6099999
A0148926H	2011-03-20	4 years 1 mon	Arts	4.13000011
A0274953J	2014-12-26	3 years 11 mons	Computing	3.36999989
A0519728O	2014-04-16	4 years 11 mons	Engineering	3.47000003
A0649404W	2012-01-13	4 years 8 mons	Arts	3.75999999
A0924417W	2010-02-10	3 years 10 mons	Engineering	3.45000005
A0762680N	2012-04-22	4 years 3 mons	Arts	3.73000002
A0215308D	2010-02-24	3 years 6 mons	Arts	4.34000015
A0460170L	2014-07-01	4 years 9 mons	Science	3.6500001
A0176463S	2012-05-17	4 years 9 mons	Computing	4.32000017
A0909346I	2011-08-10	3 years 10 mons	Computing	3.97000003
A0864345Q	2014-05-26	3 years 5 mons	Science	4.38000011
A0315111U	2014-05-19	4 years 7 mons	Arts	3.67000008
A0291449Z	2013-05-08	4 years 10 mons	Computing	4.40999985
A0698731C	2010-02-26	3 years 11 mons	Science	3.30999994
A0706780F	2015-07-07	3 years 3 mons	Science	4.30999994
A0757213N	2010-11-28	3 years 6 mons	Computing	3.32999992
A0588700V	2011-06-13	4 years 1 mon	Computing	4.46000004
A0374979M	2012-07-03	4 years 7 mons	Science	4.53999996
A0740083Z	2011-12-07	4 years 5 mons	Science	4.9000001
A0153280R	2013-05-25	4 years 8 mons	Computing	3.93000007
A0191129T	2012-10-25	4 years 11 mons	Science	4.0999999
A0226311F	2015-11-26	4 years 2 mons	Science	4.55999994
A0611570P	2010-09-16	3 years 6 mons	Arts	3.8900001
A0876345K	2015-01-12	3 years 6 mons	Engineering	3.52999997
A0462284C	2014-11-25	3 years 4 mons	Science	3.56999993
A0390788E	2014-09-15	4 years 5 mons	Science	3.8499999
A0780861T	2014-12-10	3 years 7 mons	Engineering	4.71000004
A0030356E	2015-04-22	3 years 5 mons	Arts	4.80000019
A0180412L	2010-04-15	3 years 5 mons	Science	4.15999985
A0321369Z	2014-10-14	4 years 11 mons	Science	3.25
A0345588T	2015-06-24	3 years 6 mons	Engineering	3.81999993
A0629668N	2010-07-16	4 years 9 mons	Engineering	4.76999998
A0418430I	2015-05-25	3 years 11 mons	Arts	4.11999989
A0925770J	2013-12-17	5 years	Engineering	3.76999998
A0280771O	2011-10-06	3 years 3 mons	Computing	3.17000008
A0202339F	2010-06-15	4 years 7 mons	Arts	3.02999997
A0844010S	2014-09-17	3 years 11 mons	Computing	4.13999987
A0128907X	2012-10-28	4 years 4 mons	Computing	3.78999996
A0685535Z	2012-11-05	3 years 6 mons	Engineering	3.45000005
A0312201Z	2015-04-25	4 years 10 mons	Arts	4.26999998
A0583215H	2015-12-19	4 years 5 mons	Computing	3.18000007
A0154940F	2011-11-28	4 years	Science	4.63999987
A0118949M	2011-10-03	3 years 11 mons	Science	4.88999987
A0836927X	2015-08-13	3 years 7 mons	Science	3.83999991
A0671592P	2011-01-09	4 years 5 mons	Arts	4.84000015
A0522237I	2010-12-15	4 years 2 mons	Arts	4.78000021
A0930596E	2011-06-20	4 years 11 mons	Engineering	4.03000021
A0504363P	2014-07-05	3 years 2 mons	Computing	4.8499999
A0871201Y	2015-03-12	3 years 7 mons	Arts	4.55000019
A0535133B	2015-02-27	4 years 6 mons	Computing	4.11000013
A0207983W	2014-02-03	3 years 8 mons	Engineering	4.21999979
A0340352N	2014-11-18	3 years 8 mons	Arts	4.13000011
A0051503N	2015-07-16	4 years 4 mons	Science	3.98000002
A0387202Q	2011-08-11	4 years 10 mons	Arts	3.43000007
A0585897Q	2014-12-20	3 years 10 mons	Computing	3.76999998
A0211542G	2013-06-04	4 years 1 mon	Computing	4.01000023
A0722176C	2010-08-15	3 years 3 mons	Science	3.02999997
A0429294N	2014-06-04	3 years 2 mons	Arts	4.21000004
A0418625V	2014-11-22	3 years 4 mons	Arts	4.30000019
A0681927Z	2013-10-07	4 years 9 mons	Arts	3.4000001
A0435076U	2015-06-01	4 years 10 mons	Science	3.38000011
A0647183Y	2011-08-05	4 years 3 mons	Science	3.32999992
A0597054T	2011-11-27	4 years	Science	3.95000005
A0872823W	2013-04-02	3 years 2 mons	Science	3.13000011
A0911899T	2014-02-26	3 years 10 mons	Science	3.00999999
A0500047G	2015-08-08	3 years 1 mon	Science	3.76999998
A0579402I	2014-05-10	4 years 1 mon	Computing	3.3599999
A0809552L	2011-11-17	4 years 1 mon	Science	3.28999996
A0193270L	2014-12-17	3 years 4 mons	Arts	4.07000017
A0276204O	2011-11-25	4 years 9 mons	Engineering	4.07999992
A0698353P	2014-01-02	4 years	Science	3.3499999
A0814439T	2013-08-12	4 years 2 mons	Engineering	4.92000008
A0137664R	2010-09-23	4 years 2 mons	Arts	4.30999994
A0275165D	2012-03-06	3 years 5 mons	Science	3.54999995
A0798026H	2012-12-27	4 years 7 mons	Computing	3
A0606461E	2011-12-06	4 years 11 mons	Arts	3.31999993
A0623669N	2014-02-15	3 years 6 mons	Computing	4.48000002
A0216662N	2010-07-12	4 years 9 mons	Computing	3.69000006
A0199090N	2010-11-04	3 years 8 mons	Computing	3.1099999
A0969166N	2014-05-07	3 years 6 mons	Science	4.73999977
A0550159R	2014-04-06	3 years 4 mons	Computing	4.78999996
A0561187X	2014-12-22	3 years 2 mons	Arts	3.06999993
A0310950B	2010-02-22	4 years 9 mons	Arts	4.01999998
A0237306Z	2013-10-09	4 years 5 mons	Science	3.76999998
A0684873G	2015-02-26	4 years 9 mons	Science	4.03000021
A0583113A	2014-12-06	3 years 6 mons	Engineering	3.97000003
A0987972Q	2012-01-14	3 years 10 mons	Engineering	4.48999977
A0843950R	2012-07-10	4 years 1 mon	Engineering	4.48000002
A0401912W	2014-08-13	3 years 8 mons	Engineering	4.73000002
A0229319S	2014-03-20	3 years 3 mons	Science	3.43000007
A0620484N	2014-01-16	5 years	Science	4.03999996
A0158769T	2012-12-27	3 years 9 mons	Computing	4.32999992
A0043859W	2012-04-28	4 years 7 mons	Arts	4.32999992
A0112815J	2011-09-25	4 years 11 mons	Computing	3.29999995
A0789715Q	2013-09-19	3 years 11 mons	Arts	4.48000002
A0697807R	2011-02-28	4 years 10 mons	Science	3.26999998
A0587927P	2010-11-06	3 years 10 mons	Arts	3.3599999
A0484141F	2012-04-15	4 years 6 mons	Engineering	4.92000008
A0976874L	2010-07-10	4 years 10 mons	Arts	3.5999999
A0433020E	2013-06-16	4 years 7 mons	Science	3.44000006
A0251545B	2014-04-27	4 years 6 mons	Engineering	3.8900001
A0237185P	2014-08-17	4 years	Arts	3.21000004
A0218382V	2012-02-02	4 years 7 mons	Science	3.03999996
A0716346L	2010-10-06	4 years 11 mons	Computing	3.77999997
A0084711B	2012-08-04	4 years 10 mons	Science	3.86999989
A0024093V	2010-10-16	3 years 10 mons	Science	3.20000005
A0635850G	2010-06-22	3 years 10 mons	Arts	3.6099999
A0240826J	2012-09-05	4 years 8 mons	Science	4.69000006
A0480305U	2015-11-02	4 years 6 mons	Engineering	4.75
A0172565I	2010-04-01	3 years 7 mons	Computing	3.11999989
A0774973H	2012-10-08	3 years 6 mons	Engineering	4.57999992
A0243305T	2013-11-05	4 years 3 mons	Science	4.07000017
A0869374L	2011-09-26	4 years	Computing	3.75
A0166797L	2013-09-01	3 years 5 mons	Engineering	3.33999991
A0826467C	2010-09-24	3 years 7 mons	Computing	3.6099999
A0881211V	2015-04-08	4 years 10 mons	Arts	4.73999977
A0420853R	2012-02-23	4 years 11 mons	Arts	3.96000004
A0795824O	2013-11-05	4 years	Computing	4.07999992
A0286040B	2014-07-26	3 years 11 mons	Science	3.75999999
A0842412L	2012-07-19	4 years 7 mons	Science	4.51000023
A0015413Z	2010-06-05	3 years 11 mons	Engineering	3.55999994
A0015730B	2012-05-04	4 years 2 mons	Arts	4.57999992
A0847717E	2011-06-09	4 years 4 mons	Arts	3.61999989
A0252357U	2010-03-24	4 years 10 mons	Engineering	3.25999999
A0159823L	2011-10-05	4 years 8 mons	Science	4.05000019
A0646754T	2014-08-11	4 years	Arts	4.78999996
A0940772X	2013-08-09	4 years 11 mons	Computing	3.9000001
A0520258A	2012-11-18	4 years	Arts	4.03000021
A0220705H	2014-11-09	5 years	Computing	3.8900001
A0973607N	2013-04-23	4 years 10 mons	Science	3.18000007
A0361873X	2010-10-14	3 years 3 mons	Arts	3.83999991
A0578258U	2012-02-12	3 years 8 mons	Science	4.6500001
A0109120S	2013-10-18	3 years 11 mons	Science	4.61000013
A0066761P	2011-03-13	4 years 3 mons	Engineering	3.8599999
A0799430I	2010-12-06	5 years	Engineering	3.29999995
A0877420S	2010-04-12	3 years 7 mons	Computing	3.01999998
A0712604D	2013-01-21	4 years 6 mons	Engineering	4.42999983
A0595282U	2011-03-21	3 years 6 mons	Arts	3.73000002
A0231756G	2015-12-21	4 years 8 mons	Engineering	4.38000011
A0110047M	2012-01-12	4 years 11 mons	Engineering	3.99000001
A0625279E	2015-01-09	4 years 2 mons	Computing	3.0999999
A0823598Y	2014-07-10	3 years 10 mons	Engineering	3.78999996
A0471458V	2014-01-20	4 years 11 mons	Engineering	4.88000011
A0850606W	2014-02-06	4 years 3 mons	Arts	4.15999985
A0079571O	2015-10-27	4 years 8 mons	Arts	4.32999992
A0000297G	2011-04-15	5 years	Science	3.3499999
A0682692D	2014-01-05	3 years 4 mons	Computing	3.1099999
A0146276P	2010-03-03	4 years 4 mons	Science	3.72000003
A0324445X	2014-08-19	4 years 3 mons	Computing	4.26999998
A0083744B	2012-11-21	4 years 11 mons	Science	4.3499999
A0708423Y	2014-03-06	3 years 1 mon	Science	4.5999999
A0665197G	2010-09-03	3 years 7 mons	Arts	3.86999989
A0169879E	2014-08-17	4 years 11 mons	Arts	4.94000006
A0542204C	2015-01-11	3 years 11 mons	Arts	3.88000011
A0847862I	2012-03-23	4 years 4 mons	Computing	3.6099999
A0439601E	2014-09-19	5 years	Engineering	4.65999985
A0792904H	2012-10-22	4 years 4 mons	Science	3.4000001
A0476355Z	2014-01-02	3 years 7 mons	Engineering	3.6500001
A0662945D	2012-07-20	3 years 4 mons	Arts	4.32999992
A0450325B	2010-09-13	3 years 1 mon	Computing	4
A0785165S	2012-10-03	4 years 9 mons	Science	4.63000011
A0417253J	2014-09-01	3 years 10 mons	Computing	4.28999996
A0091722F	2014-04-09	3 years 1 mon	Arts	4
A0570471U	2015-03-08	4 years 1 mon	Engineering	3.06999993
A0605356L	2012-06-10	4 years 7 mons	Arts	3.41000009
A0599515L	2011-12-02	3 years 4 mons	Engineering	3.47000003
A0453510F	2015-04-14	4 years 11 mons	Arts	3.01999998
A0424881T	2011-08-16	4 years 4 mons	Engineering	3.81999993
A0062911R	2012-05-01	3 years 11 mons	Arts	3.5999999
A0478918F	2011-05-13	3 years 9 mons	Computing	4.80999994
A0486622C	2014-07-07	3 years 5 mons	Computing	3.56999993
A0149351E	2013-09-08	3 years 4 mons	Science	3.0999999
A0661398E	2015-01-13	3 years 11 mons	Engineering	4.34000015
A0298748U	2013-04-23	4 years 9 mons	Engineering	4.96999979
A0491723Y	2011-04-21	4 years	Engineering	3.97000003
A0610121F	2015-03-28	4 years 3 mons	Engineering	4.5
A0116954X	2015-02-24	3 years 8 mons	Computing	4.5
A0426573Q	2014-08-06	4 years 6 mons	Science	4.67000008
A0354930T	2013-02-02	3 years 4 mons	Arts	4.57000017
A0482984A	2011-05-03	3 years 5 mons	Computing	3.47000003
A0530387G	2012-11-17	4 years	Engineering	3.80999994
A0124795G	2015-09-01	3 years 7 mons	Arts	3.06999993
A0245454G	2010-01-01	3 years 3 mons	Science	3.19000006
A0446866F	2011-12-14	4 years 10 mons	Computing	3.73000002
A0024666K	2012-08-12	4 years 8 mons	Engineering	3.21000004
A0745202R	2014-07-27	4 years 5 mons	Computing	3.03999996
A0730394J	2010-02-05	4 years 3 mons	Science	4.0999999
A0842742B	2011-11-07	3 years 11 mons	Computing	3.05999994
A0977298R	2014-07-10	3 years 8 mons	Arts	4.53999996
A0224311N	2014-07-18	3 years 3 mons	Computing	4.07999992
A0321726C	2012-05-06	3 years 2 mons	Arts	4.57000017
A0088428Y	2014-11-25	4 years 10 mons	Engineering	3.22000003
A0839574X	2015-08-10	3 years 5 mons	Computing	4.48999977
A0757018S	2011-11-17	4 years 9 mons	Science	3.4000001
A0656190J	2013-04-22	3 years 1 mon	Engineering	3.07999992
A0653471I	2012-03-02	3 years 11 mons	Science	4.67000008
A0561348H	2015-03-20	3 years 1 mon	Science	3.94000006
A0213128G	2015-05-01	3 years 1 mon	Engineering	4.30999994
A0945662K	2013-03-08	4 years 3 mons	Engineering	4.23999977
A0215542Q	2014-07-26	4 years 7 mons	Arts	3.1099999
A0830274M	2012-12-02	4 years	Arts	3.03999996
A0009377L	2011-06-07	3 years 9 mons	Engineering	3.98000002
A0506254D	2014-02-25	3 years 2 mons	Science	4.13000011
A0763613M	2010-05-20	3 years 1 mon	Arts	3.6400001
A0221086M	2015-06-25	3 years 10 mons	Engineering	3.06999993
A0502472P	2015-12-05	4 years 11 mons	Computing	4.80999994
A0656528D	2011-10-16	4 years	Computing	4.0999999
A0710190F	2011-07-01	3 years 7 mons	Science	3.83999991
A0815348V	2010-02-02	3 years 7 mons	Science	4.26000023
A0798821K	2014-11-27	4 years 2 mons	Science	3.56999993
A0708429L	2012-10-05	3 years 7 mons	Computing	4.80000019
A0787425A	2010-05-12	3 years 6 mons	Arts	3.68000007
A0152136O	2012-08-13	3 years 3 mons	Engineering	3.24000001
A0236646Y	2010-10-02	3 years 1 mon	Computing	3.6099999
A0595700P	2014-09-01	4 years 1 mon	Science	4.78999996
A0385220S	2013-12-08	3 years 8 mons	Computing	4.07999992
A0840065D	2010-07-26	3 years 1 mon	Engineering	3.32999992
A0967636K	2015-10-09	4 years 5 mons	Engineering	4.32999992
A0154635K	2012-12-26	4 years 10 mons	Computing	3.3599999
A0398508T	2014-03-08	3 years 2 mons	Engineering	3.27999997
A0005850J	2011-06-19	3 years 5 mons	Science	3.29999995
A0362478F	2012-03-12	5 years	Engineering	4.67999983
A0846204M	2010-08-04	3 years 9 mons	Science	4.98000002
A0411809J	2012-03-08	4 years 10 mons	Engineering	3.50999999
A0177285X	2014-01-02	4 years 7 mons	Arts	3.66000009
A0772291J	2011-08-24	4 years 8 mons	Computing	3.46000004
A0831421H	2011-07-23	4 years 5 mons	Computing	4.80999994
A0678355B	2010-12-24	4 years 7 mons	Engineering	3.47000003
A0670771M	2014-05-18	4 years 3 mons	Science	4.30999994
A0879274R	2012-03-28	3 years 5 mons	Engineering	3.6400001
A0872394Z	2014-10-03	3 years 9 mons	Science	3.24000001
A0295851F	2010-09-21	3 years 2 mons	Computing	4.38000011
A0316847I	2010-03-28	3 years 9 mons	Computing	3.94000006
A0669583Q	2010-06-27	3 years 4 mons	Arts	4.80000019
A0803816K	2013-11-26	4 years 4 mons	Engineering	3.5
A0152934N	2013-06-17	4 years 5 mons	Computing	4.03999996
A0633475N	2013-05-14	4 years 9 mons	Computing	4.30000019
A0276323Y	2014-04-01	4 years 3 mons	Computing	4.38999987
A0123833Q	2015-09-14	4 years 2 mons	Arts	3.78999996
A0286136W	2010-01-26	3 years 3 mons	Engineering	3.02999997
A0238921G	2011-09-02	4 years 10 mons	Computing	4.36000013
A0005489Z	2015-06-11	3 years 5 mons	Science	4.5999999
A0818410H	2010-02-14	3 years 4 mons	Computing	4.53000021
A0736118V	2015-05-04	4 years 2 mons	Computing	4.44999981
A0103656T	2012-06-25	4 years 9 mons	Computing	4.4000001
A0878157M	2011-03-16	3 years 9 mons	Engineering	3.79999995
A0943429B	2012-02-11	4 years 7 mons	Engineering	3.95000005
A0951839Q	2011-12-14	4 years 6 mons	Arts	4.69000006
A0127212W	2013-09-07	4 years	Engineering	4.48000002
A0573173J	2011-04-11	4 years 7 mons	Computing	3.68000007
A0011680U	2012-06-18	4 years 6 mons	Engineering	4.65999985
A0433770V	2012-12-16	3 years 1 mon	Arts	4.61999989
A0759713T	2010-03-08	4 years 1 mon	Engineering	3.3599999
A0859146P	2011-08-01	3 years 4 mons	Arts	3.6500001
A0793893H	2014-11-27	4 years	Engineering	4.42999983
A0060106Y	2012-02-20	4 years 10 mons	Science	4.59000015
A0147881V	2011-03-28	3 years 9 mons	Engineering	4.65999985
A0849687U	2014-10-02	4 years 11 mons	Engineering	4.46000004
A0370446Z	2011-03-03	4 years 3 mons	Arts	4.4000001
A0449447M	2012-10-06	5 years	Computing	4.63999987
A0247215K	2015-06-08	3 years 8 mons	Computing	3.00999999
A0820203U	2014-04-21	4 years 2 mons	Computing	3.77999997
A0212257N	2011-12-28	3 years 1 mon	Computing	4.11999989
A0496275A	2011-03-25	4 years 6 mons	Science	3.71000004
A0225963A	2012-10-15	4 years 11 mons	Science	3.96000004
A0355587Q	2013-09-22	3 years 3 mons	Arts	3.9000001
A0423739I	2012-02-22	4 years 5 mons	Arts	4.73999977
A0852368T	2010-03-23	4 years 7 mons	Engineering	4.94999981
A0654879A	2014-05-19	3 years 5 mons	Engineering	3.06999993
A0538271H	2012-12-09	3 years 3 mons	Computing	3.36999989
A0296139I	2010-12-09	4 years 8 mons	Science	3.46000004
A0284332R	2013-01-06	4 years 1 mon	Computing	3.9000001
A0825372Q	2015-01-22	4 years 10 mons	Computing	4.88999987
A0120945Z	2011-06-21	4 years 10 mons	Computing	4
A0572975X	2014-09-08	3 years 7 mons	Arts	4.38000011
A0238441F	2014-06-14	3 years 11 mons	Computing	3.01999998
A0379344R	2012-08-20	3 years 10 mons	Arts	4.13999987
A0881557B	2015-04-27	4 years 1 mon	Computing	3.72000003
A0971679L	2015-11-05	3 years 8 mons	Computing	3.28999996
A0599178W	2011-06-16	3 years 11 mons	Computing	4.96999979
A0605545U	2015-08-28	3 years 9 mons	Science	3.42000008
A0636878N	2013-07-14	3 years 6 mons	Arts	3.05999994
A0426096D	2015-03-02	3 years 1 mon	Engineering	3.53999996
A0236662P	2015-10-09	4 years 2 mons	Engineering	4.01999998
A0314478G	2015-04-04	3 years 4 mons	Computing	3.70000005
A0959995E	2014-04-11	3 years 10 mons	Engineering	4.94000006
A0007487D	2013-07-04	3 years 10 mons	Science	4.57000017
A0038289M	2012-07-19	3 years 6 mons	Science	4
A0926072J	2015-05-10	3 years 5 mons	Engineering	4.19999981
A0712672W	2010-10-02	4 years 5 mons	Computing	3.44000006
A0516317C	2015-01-03	3 years 9 mons	Computing	4.98999977
A0167416A	2010-10-26	3 years 5 mons	Engineering	3.3499999
A0754419K	2011-12-16	4 years	Engineering	4.4000001
A0223496S	2010-01-02	4 years 1 mon	Engineering	4.07999992
A0846197B	2013-05-27	4 years 5 mons	Science	4.67999983
A0103621B	2013-08-19	3 years 4 mons	Engineering	3.25999999
A0175952C	2014-09-18	3 years 5 mons	Arts	3.41000009
A0440666C	2014-03-26	3 years 8 mons	Science	4.03999996
A0776559M	2012-10-28	3 years 2 mons	Computing	3.33999991
A0154753B	2012-06-19	3 years 1 mon	Engineering	3.75
A0110644L	2015-06-01	4 years 7 mons	Arts	4.15999985
A0388548H	2015-05-14	4 years 5 mons	Computing	3.00999999
A0879278R	2012-09-23	4 years 11 mons	Computing	4.51999998
A0777116T	2011-10-22	4 years 10 mons	Engineering	3.80999994
A0075202F	2014-08-02	3 years 11 mons	Computing	3.30999994
A0062741O	2012-08-12	4 years 5 mons	Computing	4.0999999
A0828719Z	2012-10-11	4 years 9 mons	Engineering	4.69999981
A0912065N	2011-02-22	3 years 1 mon	Arts	3.99000001
A0523390W	2011-01-12	4 years 4 mons	Arts	4.75
A0390653S	2015-10-07	3 years 6 mons	Science	4.36000013
A0498827Y	2014-06-13	4 years 1 mon	Arts	4.71999979
A0100640T	2012-02-20	4 years	Computing	4.55000019
A0112957U	2014-05-03	4 years 6 mons	Arts	4.13999987
A0964396K	2015-02-09	4 years 2 mons	Science	4.09000015
A0644994K	2013-03-23	3 years 3 mons	Arts	4.36999989
A0830856G	2015-04-23	4 years 2 mons	Arts	3.76999998
A0287756B	2010-08-21	3 years 10 mons	Science	4.71999979
A0179751D	2010-05-04	5 years	Engineering	3.16000009
A0092068L	2012-08-10	4 years 11 mons	Arts	4.59000015
A0209292T	2013-08-27	3 years 1 mon	Engineering	3.75999999
A0957316W	2010-10-12	3 years 9 mons	Computing	4.5
A0450706B	2011-03-11	4 years 8 mons	Arts	3.67000008
A0723774I	2014-05-07	4 years 2 mons	Science	3.13000011
A0717593I	2013-08-15	4 years 3 mons	Science	4.13000011
A0274592R	2014-05-09	4 years 6 mons	Computing	3.9000001
A0058813Z	2015-11-13	4 years 10 mons	Science	3.72000003
A0500057D	2014-09-24	3 years 8 mons	Science	4.46000004
A0407498E	2010-11-02	4 years 11 mons	Engineering	4.03999996
A0372703M	2012-12-07	4 years 10 mons	Science	4.07000017
A0794338R	2010-10-03	4 years 6 mons	Computing	4.55000019
A0387139M	2012-12-09	4 years 3 mons	Science	4.15999985
A0201569G	2010-09-21	4 years 6 mons	Science	4.21000004
A0290437M	2011-02-12	3 years 3 mons	Science	3.8599999
A0932800J	2015-01-12	3 years 4 mons	Arts	3.18000007
A0717461I	2015-03-08	3 years 6 mons	Engineering	4.98999977
A0086991O	2015-03-02	4 years 11 mons	Arts	4.05000019
A0943269O	2014-04-04	3 years 3 mons	Science	4.82000017
A0219088F	2011-03-27	4 years 1 mon	Engineering	4.86999989
A0381683H	2014-10-24	3 years 11 mons	Arts	4.55000019
A0776384Q	2011-03-25	3 years 8 mons	Computing	4.86999989
A0020845T	2013-02-16	4 years 3 mons	Computing	3.98000002
A0314366K	2015-05-13	4 years 7 mons	Arts	3.42000008
A0245724K	2012-11-24	3 years 10 mons	Computing	4.63000011
A0589837G	2014-05-13	3 years 11 mons	Computing	3.76999998
A0547249T	2010-03-06	4 years 7 mons	Science	4.28999996
A0909510M	2013-08-20	3 years 11 mons	Engineering	3.55999994
A0004431T	2011-07-26	3 years 9 mons	Arts	4.61000013
A0489077L	2010-02-26	3 years 1 mon	Computing	3.41000009
A0753632L	2013-09-13	3 years 6 mons	Computing	4.96999979
A0703361E	2011-05-17	3 years 10 mons	Arts	4.44999981
A0451152D	2010-11-22	3 years 6 mons	Science	3.71000004
A0421935V	2015-06-25	4 years 5 mons	Engineering	3.27999997
A0265734O	2012-01-16	4 years 5 mons	Engineering	3.01999998
A0108792R	2011-08-06	5 years	Engineering	3.46000004
A0015401G	2010-12-26	3 years 4 mons	Science	3.16000009
A0363117N	2011-09-12	3 years 3 mons	Science	3.68000007
A0048947R	2012-04-03	4 years 3 mons	Computing	3.36999989
A0438855E	2014-09-21	4 years 5 mons	Science	3.94000006
A0984942I	2014-04-25	4 years	Computing	4.07999992
A0779017T	2012-01-05	5 years	Engineering	3.93000007
A0038482O	2015-11-11	4 years 2 mons	Science	4.57999992
A0148716Y	2010-05-05	3 years 1 mon	Arts	3.26999998
A0967155Y	2012-03-02	4 years 3 mons	Arts	3.83999991
A0554701H	2015-03-19	4 years 11 mons	Arts	3.02999997
A0312834P	2011-09-13	4 years 7 mons	Computing	3.44000006
A0404977F	2011-10-03	4 years 5 mons	Arts	3.21000004
A0886344W	2012-04-17	4 years 8 mons	Arts	3.19000006
A0670446N	2014-11-27	4 years 7 mons	Computing	4.38000011
A0092654V	2014-10-02	3 years 11 mons	Computing	3.92000008
A0324196W	2011-07-25	4 years 1 mon	Science	3.71000004
A0172053N	2011-07-06	5 years	Computing	4.61999989
A0306027K	2010-09-02	4 years 10 mons	Computing	4.5
A0384204W	2014-02-16	3 years 7 mons	Engineering	3.24000001
A0265973R	2011-08-23	4 years 7 mons	Science	3
A0764255P	2014-12-08	4 years	Engineering	3.74000001
A0091973V	2013-01-25	3 years 2 mons	Computing	3.92000008
A0512440U	2010-04-06	4 years 1 mon	Arts	4.1500001
A0915333W	2010-09-25	4 years 6 mons	Arts	4.07000017
A0119511U	2014-06-24	3 years 9 mons	Science	4.94999981
A0998326X	2012-07-13	3 years 8 mons	Science	4.46000004
A0725144V	2011-06-01	3 years 10 mons	Science	3.86999989
A0845794R	2012-06-26	3 years 8 mons	Science	4.71000004
A0455525O	2014-09-08	4 years 8 mons	Arts	3.74000001
A0228615U	2012-08-15	4 years 10 mons	Computing	3.20000005
A0872178N	2015-06-28	3 years 6 mons	Arts	4.26999998
A0206204X	2012-11-05	3 years 3 mons	Engineering	4.09000015
A0897238Q	2011-11-21	4 years 11 mons	Arts	4.34000015
A0802125T	2013-11-03	3 years 7 mons	Engineering	3.6400001
A0161040B	2015-11-08	3 years 11 mons	Arts	3.18000007
A0699504I	2011-02-28	4 years 1 mon	Arts	3.41000009
A0289807W	2010-11-28	3 years 9 mons	Science	4.84000015
A0981378V	2010-11-12	3 years 10 mons	Computing	3.8499999
A0525140C	2012-05-02	4 years 5 mons	Arts	4.78000021
A0537011Q	2012-11-19	4 years 6 mons	Science	4.01999998
A0883938M	2013-02-03	3 years 11 mons	Arts	4.61999989
A0819699F	2014-12-28	3 years 5 mons	Computing	4.92000008
A0983806H	2015-07-26	3 years 7 mons	Engineering	3.73000002
A0536409V	2014-02-14	3 years 10 mons	Engineering	4.42000008
A0019822F	2012-04-03	3 years 1 mon	Science	3.02999997
A0888375Z	2010-10-06	3 years 4 mons	Science	3.99000001
A0434983W	2015-01-26	4 years 5 mons	Arts	3.6400001
A0529268X	2014-06-14	3 years 5 mons	Engineering	3.1099999
A0043307N	2011-09-27	3 years 8 mons	Science	4.26000023
A0903157R	2015-08-27	4 years 11 mons	Arts	4.34000015
A0490639U	2013-12-13	4 years 2 mons	Arts	4.48000002
A0578875C	2012-04-04	4 years 6 mons	Computing	4.9000001
A0426307B	2010-03-08	4 years 10 mons	Engineering	4.38000011
A0391032K	2011-01-09	4 years 2 mons	Engineering	4.07999992
A0806921L	2013-05-18	3 years 6 mons	Arts	3.36999989
A0089184Z	2014-12-03	4 years 4 mons	Arts	4.63000011
A0399387D	2013-04-04	4 years 5 mons	Science	3.1500001
A0751740B	2010-07-05	3 years 4 mons	Engineering	4.86999989
A0945560I	2012-04-17	4 years 7 mons	Science	4.73999977
A0236311Y	2013-03-20	4 years 5 mons	Arts	3.69000006
A0570289M	2014-02-06	5 years	Computing	4.98999977
A0779856N	2013-04-08	4 years 6 mons	Engineering	4.63000011
A0803576H	2014-03-27	4 years 11 mons	Science	3.74000001
A0766641S	2010-10-09	4 years 8 mons	Computing	3.50999999
A0577181Y	2011-04-19	3 years 4 mons	Engineering	3.69000006
A0337437G	2012-05-13	4 years 1 mon	Engineering	3.74000001
A0375623Y	2011-06-23	5 years	Computing	4.13999987
A0360709T	2013-01-28	5 years	Science	3.3900001
A0984464X	2011-08-05	4 years 11 mons	Science	3.3599999
A0863483M	2012-01-25	5 years	Computing	3.3499999
A0883343A	2010-08-04	4 years 8 mons	Arts	3.72000003
A0943860P	2012-05-24	3 years 3 mons	Computing	3.00999999
A0805608U	2012-08-13	4 years	Computing	3.11999989
A0090755N	2013-10-16	3 years 3 mons	Engineering	3.1500001
A0824199X	2013-02-27	3 years 5 mons	Engineering	3.58999991
A0325935B	2014-02-28	4 years 2 mons	Engineering	3.94000006
A0437094C	2012-03-10	3 years 8 mons	Science	3.25999999
A0147265T	2014-06-07	4 years 6 mons	Computing	4.30000019
A0229759K	2015-08-01	3 years 10 mons	Engineering	3.48000002
A0992386R	2012-02-05	4 years 2 mons	Engineering	3.76999998
A0576392A	2015-11-11	4 years 10 mons	Science	3.22000003
A0575027W	2014-04-11	4 years 8 mons	Arts	4.8499999
A0524888C	2010-02-19	4 years 6 mons	Computing	4.17999983
A0735836I	2014-09-22	4 years 11 mons	Computing	4.38999987
A0744079Y	2015-04-11	4 years 11 mons	Computing	3.48000002
A0214272N	2013-12-17	3 years 3 mons	Arts	4.84000015
A0202101P	2013-03-11	4 years 1 mon	Engineering	3.86999989
A0628414S	2010-07-13	3 years 11 mons	Science	3.3499999
A0906942D	2015-08-25	3 years 5 mons	Arts	3.52999997
A0420580V	2015-05-07	4 years 10 mons	Computing	4.69999981
A0540838A	2012-09-19	4 years 10 mons	Engineering	3.69000006
A0776430X	2011-09-16	4 years 6 mons	Computing	4.53000021
A0369719Y	2010-03-01	4 years 11 mons	Science	4.32000017
A0467427P	2012-04-21	4 years 8 mons	Science	4.13999987
A0631722D	2012-08-03	3 years 5 mons	Arts	4.32000017
A0271280T	2013-09-10	3 years 4 mons	Computing	3.86999989
A0364853E	2015-02-16	3 years 4 mons	Computing	4.63000011
A0262203H	2012-11-11	4 years 5 mons	Computing	4.23999977
A0748990P	2011-04-26	3 years 4 mons	Science	3.41000009
A0052489K	2014-07-19	4 years	Science	4.03999996
A0869129C	2010-04-13	4 years 11 mons	Computing	3.77999997
A0763132Y	2012-12-06	4 years 5 mons	Engineering	3
A0320586F	2015-08-18	3 years 11 mons	Arts	4.0999999
A0122464A	2015-12-23	3 years 10 mons	Science	4.01999998
A0822130N	2011-06-04	4 years 5 mons	Computing	3.97000003
A0279137I	2010-09-24	3 years 2 mons	Science	4.13999987
A0377641V	2012-03-08	3 years 1 mon	Arts	4.01999998
A0775984J	2013-05-25	3 years 2 mons	Science	3.79999995
A0709970L	2013-02-21	4 years 11 mons	Science	3.75
A0001716V	2012-07-22	4 years 8 mons	Computing	4.21000004
A0304665Y	2010-03-21	4 years 11 mons	Engineering	4.46999979
A0956881D	2015-12-06	3 years 5 mons	Science	3.04999995
A0099731T	2011-01-10	3 years 2 mons	Engineering	3.80999994
A0808160L	2012-08-13	3 years 1 mon	Science	3.45000005
A0852889C	2010-01-04	4 years 1 mon	Computing	4.67000008
A0393332H	2014-10-09	3 years 10 mons	Engineering	4.61999989
A0311100Z	2015-11-08	4 years 7 mons	Engineering	3.54999995
A0391231F	2013-04-20	3 years 7 mons	Computing	3.4000001
A0274651C	2011-12-04	4 years 3 mons	Engineering	3.31999993
A0737594Y	2015-05-26	4 years	Engineering	4.17000008
A0525526Q	2011-07-23	4 years 5 mons	Arts	3.3499999
A0647198K	2010-01-14	3 years 10 mons	Arts	3.22000003
A0618118U	2013-04-12	4 years 1 mon	Engineering	3.20000005
A0422487B	2014-11-27	4 years 5 mons	Arts	3.11999989
A0134926X	2012-11-06	4 years 7 mons	Engineering	4.23999977
A0349102P	2015-12-01	4 years 9 mons	Engineering	3.51999998
A0919924E	2013-07-04	4 years	Arts	3.27999997
A0222194M	2012-09-09	4 years 3 mons	Engineering	3.68000007
A0059442W	2010-02-25	3 years 2 mons	Science	3.19000006
A0079401S	2012-10-11	4 years 6 mons	Engineering	3.55999994
A0082679H	2013-01-04	4 years	Science	3.61999989
A0431944M	2012-08-24	3 years 3 mons	Arts	4.96000004
A0060084L	2012-12-05	3 years 9 mons	Arts	3.70000005
A0254554Q	2012-09-14	4 years 9 mons	Computing	3.5
A0615243G	2014-11-12	4 years 11 mons	Computing	3.5999999
A0399974U	2013-02-06	3 years 8 mons	Engineering	3.92000008
A0757598O	2013-02-20	4 years 8 mons	Arts	4.01000023
A0664071K	2014-11-19	4 years 5 mons	Engineering	3.68000007
A0908827U	2014-03-26	4 years 7 mons	Engineering	3.02999997
A0349631J	2015-07-16	4 years 5 mons	Science	4.96000004
A0024813M	2015-11-12	3 years 11 mons	Arts	3.97000003
A0869281G	2012-03-19	3 years 1 mon	Engineering	4.96999979
A0486269M	2015-04-04	3 years 6 mons	Engineering	4.65999985
A0193194D	2010-06-12	4 years	Arts	4.05999994
A0405249E	2010-04-06	3 years 9 mons	Arts	3.33999991
A0017308B	2013-07-06	3 years 8 mons	Computing	4.09000015
A0245943W	2010-04-22	3 years 10 mons	Computing	3.07999992
A0231511I	2012-02-05	3 years 8 mons	Science	3.04999995
A0275702E	2010-01-01	3 years 4 mons	Engineering	3.1099999
A0533014W	2012-01-05	3 years 9 mons	Science	4.28999996
A0580978E	2011-04-03	4 years 7 mons	Science	3.3900001
A0373111Q	2013-09-12	4 years 5 mons	Engineering	3.98000002
A0551805T	2010-12-22	3 years 2 mons	Computing	4.03999996
A0266016J	2012-01-07	4 years	Science	3.8499999
A0052456O	2012-04-07	3 years 4 mons	Science	4.69000006
A0826154V	2013-11-04	4 years 3 mons	Arts	3.28999996
A0254079I	2011-03-10	3 years 10 mons	Science	4.63999987
A0062709W	2015-06-28	3 years 8 mons	Science	3.11999989
A0127581K	2013-02-19	3 years 10 mons	Computing	3.83999991
A0040683W	2011-10-21	4 years 3 mons	Science	4.1500001
A0692555Y	2010-05-24	4 years 11 mons	Computing	4.5
A0783599M	2012-09-09	3 years 6 mons	Arts	3.16000009
A0260093F	2012-07-28	3 years 3 mons	Computing	4.03999996
A0605074D	2015-05-10	3 years 9 mons	Computing	4.07000017
A0219548L	2012-04-04	4 years 4 mons	Engineering	3.79999995
A0760584H	2012-10-05	3 years 9 mons	Engineering	3.94000006
A0459312P	2014-02-23	3 years 1 mon	Computing	4.48999977
A0119960U	2012-07-22	3 years 10 mons	Arts	4.96999979
A0600202K	2012-04-14	4 years 11 mons	Science	4.28999996
A0293087A	2012-03-07	4 years 4 mons	Science	4.32000017
A0737587L	2013-06-07	4 years	Arts	3.31999993
A0119121O	2013-11-07	4 years 5 mons	Engineering	3.81999993
A0462172V	2010-05-05	5 years	Science	3.3599999
A0298603K	2012-12-06	4 years 2 mons	Engineering	3.04999995
A0312873A	2013-02-25	4 years 9 mons	Arts	4.01000023
A0859430U	2012-02-21	5 years	Computing	3.25999999
A0995768O	2010-04-21	4 years 5 mons	Science	3.99000001
A0082359P	2013-05-13	3 years 5 mons	Arts	4.38999987
A0591789O	2014-02-10	3 years 5 mons	Engineering	3.51999998
A0460099X	2010-06-06	3 years 10 mons	Science	4.48000002
A0427870E	2015-03-05	3 years 8 mons	Engineering	3.75999999
A0124368Y	2014-05-13	3 years 8 mons	Computing	3.02999997
A0868415G	2012-10-19	3 years 5 mons	Computing	3.07999992
A0238663G	2014-05-23	4 years 8 mons	Arts	3.1400001
A0179471X	2011-07-28	4 years 9 mons	Engineering	3.04999995
A0459202A	2015-01-05	4 years	Computing	4.36999989
A0372291Z	2010-03-14	3 years 2 mons	Computing	3.30999994
A0540175G	2014-05-20	3 years 1 mon	Arts	3.00999999
A0430922Z	2010-01-26	4 years 4 mons	Engineering	3.79999995
A0735323X	2013-06-02	3 years 3 mons	Computing	3.57999992
A0780462N	2015-03-14	3 years 2 mons	Engineering	3.75999999
A0939438W	2013-02-17	4 years 7 mons	Computing	3.02999997
A0018500W	2013-01-22	4 years 4 mons	Engineering	4.78999996
A0136972Y	2015-08-05	5 years	Computing	3.13000011
A0433532J	2012-02-06	3 years 10 mons	Science	4.88000011
A0646785D	2012-11-09	4 years 1 mon	Science	3.46000004
A0217297T	2011-12-09	3 years 7 mons	Arts	3.44000006
A0693001S	2014-03-24	5 years	Arts	4.73000002
A0455030H	2013-12-25	4 years 7 mons	Engineering	3.86999989
A0019644Y	2010-04-01	3 years 3 mons	Science	4.76999998
A0043326T	2013-03-10	3 years 2 mons	Computing	3.48000002
A0204038M	2010-05-05	3 years 1 mon	Arts	4.96999979
A0219783E	2010-05-17	3 years 6 mons	Engineering	4.07000017
A0548394D	2012-11-05	4 years 2 mons	Science	3.88000011
A0499433B	2015-07-07	3 years 5 mons	Science	3.67000008
A0794772O	2015-03-15	4 years 6 mons	Computing	3.42000008
A0711109K	2015-11-27	4 years	Engineering	3.92000008
A0909684R	2011-03-24	3 years 5 mons	Engineering	4.17000008
A0740631W	2011-05-04	3 years 4 mons	Engineering	3.80999994
A0520771C	2010-12-11	3 years 4 mons	Science	4.38000011
A0003744I	2012-01-26	3 years 8 mons	Computing	3.74000001
A0657065A	2014-01-22	3 years 4 mons	Computing	4.46000004
A0108350X	2011-02-20	4 years 8 mons	Science	3.8900001
A0691220O	2013-03-06	4 years 6 mons	Science	4.03999996
A0138793J	2013-05-12	4 years 10 mons	Science	4.63000011
A0838239Y	2010-11-09	3 years 8 mons	Science	4.96999979
A0685028O	2013-07-11	3 years 2 mons	Science	4.46999979
A0239503S	2010-08-21	5 years	Computing	4.4000001
A0645348D	2010-10-04	5 years	Science	3.08999991
A0912423X	2011-10-19	3 years 7 mons	Computing	4.92999983
A0526531Q	2010-05-07	4 years 4 mons	Computing	4.36000013
A0690118U	2011-04-28	4 years 4 mons	Computing	3.53999996
A0126115Z	2015-04-20	5 years	Arts	4.55999994
A0156845F	2014-12-05	4 years 3 mons	Arts	3.99000001
A0869523H	2012-05-18	4 years 8 mons	Engineering	3.19000006
A0953145G	2012-01-28	3 years 6 mons	Science	3.55999994
A0779341G	2014-11-19	4 years 5 mons	Science	4.03999996
A0000455I	2010-11-12	5 years	Engineering	4.17000008
A0533033F	2011-02-28	3 years 6 mons	Arts	4.32999992
A0578845V	2012-05-25	3 years 6 mons	Science	4.05000019
A0699962M	2011-08-07	4 years 9 mons	Computing	4.61000013
A0058511E	2014-03-02	4 years 2 mons	Arts	4.71000004
A0696494R	2011-01-03	4 years 4 mons	Engineering	4.26000023
A0621961Z	2015-06-10	4 years 5 mons	Arts	4.76000023
A0901260O	2015-07-07	3 years 5 mons	Arts	4.86000013
A0428754K	2014-10-21	4 years 5 mons	Computing	3.8599999
A0237852W	2013-06-18	4 years 10 mons	Arts	4.61999989
A0985489C	2010-10-06	3 years 3 mons	Engineering	3.1400001
A0599013S	2014-07-14	4 years	Engineering	4.36999989
A0686433S	2011-01-22	4 years	Science	3.08999991
A0820238G	2012-04-14	4 years 6 mons	Computing	4.61999989
A0048651Y	2013-03-12	4 years 1 mon	Science	4.21000004
A0522579M	2010-05-27	3 years 8 mons	Science	4.13999987
A0380383T	2010-04-14	4 years 9 mons	Engineering	3.96000004
A0740092E	2015-05-25	4 years 7 mons	Engineering	3.05999994
A0579170A	2013-09-03	4 years 11 mons	Science	4.71999979
A0446066N	2015-01-03	4 years 6 mons	Science	4.01999998
A0445526C	2014-03-28	3 years 11 mons	Arts	3.00999999
A0625645F	2015-05-20	4 years 5 mons	Arts	3.66000009
A0779995G	2010-06-22	4 years 4 mons	Arts	4.8499999
A0876439W	2013-12-17	3 years 1 mon	Computing	3.06999993
A0976204Y	2013-10-20	4 years 3 mons	Engineering	4.84000015
A0566144C	2012-05-12	3 years 1 mon	Science	4.11000013
A0671478C	2012-11-21	4 years 4 mons	Science	3.25999999
A0101894N	2012-02-11	4 years 7 mons	Computing	4.05999994
A0232934R	2013-01-24	3 years 2 mons	Computing	3.41000009
A0534588E	2015-03-11	4 years 10 mons	Arts	4.48000002
A0273479F	2010-10-17	4 years 8 mons	Arts	4.71999979
A0499217N	2012-07-11	3 years 10 mons	Science	4.26000023
A0438393E	2012-08-13	3 years 5 mons	Science	3.24000001
A0405251Z	2015-04-27	5 years	Arts	4.15999985
A0780355S	2010-03-24	4 years 3 mons	Computing	4.30999994
A0376542B	2012-09-01	4 years 10 mons	Computing	4.05999994
A0085844V	2012-12-19	4 years 3 mons	Science	3.45000005
A0233055D	2014-03-24	3 years 3 mons	Computing	3.48000002
A0962386C	2011-08-21	3 years 11 mons	Engineering	4.13999987
A0362951P	2015-08-21	3 years 11 mons	Arts	4
A0900936J	2014-08-15	4 years 6 mons	Computing	3.55999994
A0208871D	2012-11-04	3 years 8 mons	Arts	3.03999996
A0575526J	2015-01-21	4 years 8 mons	Science	3.42000008
A0976626Q	2011-06-19	4 years 2 mons	Arts	3.36999989
A0909974K	2015-05-01	3 years 10 mons	Science	3.36999989
A0130243E	2010-09-19	4 years 11 mons	Science	4.11000013
A0931650M	2013-10-24	3 years 5 mons	Science	3.69000006
A0270494G	2011-03-10	4 years 11 mons	Computing	3.36999989
A0570842J	2013-09-01	3 years 8 mons	Engineering	3.70000005
A0124613K	2015-08-23	4 years 2 mons	Engineering	4.28000021
A0098803L	2010-01-06	3 years 11 mons	Science	3.1400001
A0982442B	2012-08-07	3 years 9 mons	Science	4.92000008
A0543878L	2013-06-14	4 years 5 mons	Engineering	3.78999996
A0825446Q	2010-07-23	3 years 1 mon	Computing	3.26999998
A0874903Q	2013-02-27	3 years 6 mons	Engineering	4.82999992
A0146785E	2010-12-22	4 years 9 mons	Engineering	3.47000003
A0928312B	2015-02-20	4 years 8 mons	Computing	4.46999979
A0532276D	2013-03-21	3 years 7 mons	Computing	4.94999981
A0418552F	2014-09-08	3 years 3 mons	Science	4.94999981
A0452957Q	2012-03-19	4 years 11 mons	Engineering	4.48999977
A0285338V	2012-09-22	4 years 2 mons	Computing	4.88000011
A0288029K	2013-06-18	4 years 7 mons	Arts	4
A0949141P	2014-12-10	3 years 8 mons	Computing	4.23999977
A0427314U	2011-07-14	3 years 9 mons	Computing	4.57000017
A0189787Z	2015-10-23	3 years 7 mons	Engineering	4.28000021
A0632899G	2010-07-14	4 years 6 mons	Science	4.71999979
A0862190I	2010-11-28	4 years 9 mons	Computing	4.78999996
A0107996S	2014-05-03	3 years 1 mon	Arts	4.03999996
A0364494C	2013-10-01	4 years 2 mons	Science	4.67999983
A0422194J	2013-06-05	4 years 6 mons	Arts	3.53999996
A0150721V	2014-03-03	3 years 10 mons	Engineering	3.94000006
A0338663U	2015-02-22	4 years 5 mons	Engineering	4.30000019
A0491865U	2014-04-21	4 years 7 mons	Science	3.97000003
A0494971T	2012-03-19	4 years 1 mon	Computing	3.19000006
A0750642G	2014-02-10	4 years 7 mons	Computing	3.96000004
A0489253K	2011-09-21	4 years 10 mons	Computing	4.05000019
A0123111O	2012-12-25	4 years 2 mons	Science	3.3900001
A0075376Y	2010-06-06	4 years 9 mons	Arts	3.50999999
A0331483B	2015-12-16	5 years	Computing	4.40999985
A0187567U	2011-04-16	3 years 2 mons	Computing	3.68000007
A0583446G	2011-03-23	4 years	Engineering	4.03000021
A0508589P	2010-06-21	3 years 5 mons	Engineering	4.73000002
A0283378L	2010-09-05	3 years 8 mons	Engineering	4.26999998
A0075798I	2015-10-05	3 years 8 mons	Science	3.1099999
A0740063A	2012-08-24	4 years	Computing	3.01999998
A0120514I	2012-12-20	4 years 9 mons	Engineering	4.57000017
A0776476G	2014-12-08	3 years 11 mons	Computing	3.98000002
A0718478A	2012-10-01	3 years 10 mons	Engineering	4.32999992
A0470923E	2015-03-26	3 years 2 mons	Computing	3.93000007
A0821144X	2014-12-05	4 years 1 mon	Engineering	4.17999983
A0391282L	2015-11-03	3 years 11 mons	Computing	4.98999977
A0830159L	2010-03-05	4 years 7 mons	Science	4.48999977
A0332204I	2013-11-09	3 years 2 mons	Computing	4.3499999
A0941978I	2012-07-15	4 years 11 mons	Engineering	4.05000019
A0482641T	2012-07-04	4 years 3 mons	Computing	3.19000006
A0344163T	2013-04-26	3 years 9 mons	Arts	4.61000013
A0220151B	2010-11-15	3 years 1 mon	Engineering	3.80999994
A0187076Q	2012-01-10	3 years 10 mons	Arts	4.19000006
A0821160T	2011-05-17	4 years 7 mons	Science	3.31999993
A0343766T	2011-10-03	4 years 10 mons	Computing	4.13000011
A0444981S	2015-01-15	3 years 4 mons	Computing	3.05999994
A0166767U	2011-03-19	3 years 2 mons	Arts	3.92000008
A0217094R	2010-08-16	4 years 9 mons	Engineering	4.71999979
A0797702B	2011-04-28	4 years 3 mons	Computing	4.55999994
A0555847C	2011-01-17	3 years 10 mons	Science	4.03000021
A0381825J	2015-12-08	4 years	Computing	3.74000001
A0973196L	2013-10-20	3 years 10 mons	Arts	3.48000002
A0865382M	2010-04-07	3 years 7 mons	Arts	4.32000017
A0759631D	2010-08-18	5 years	Computing	3.30999994
A0609058T	2011-04-21	3 years 11 mons	Computing	3.67000008
A0013336T	2015-03-16	3 years 10 mons	Computing	4.78999996
A0137949K	2013-10-06	4 years	Science	3.08999991
A0895339Y	2010-10-16	4 years 7 mons	Computing	3.17000008
A0846428V	2012-05-26	3 years 2 mons	Science	3.3499999
A0742070J	2013-09-14	4 years	Arts	3.32999992
A0888536Z	2015-01-05	3 years 5 mons	Engineering	3.81999993
A0675446J	2013-03-05	3 years 10 mons	Arts	4.51000023
A0092618O	2013-01-27	4 years 2 mons	Arts	4.09000015
A0367579Q	2013-03-27	4 years 2 mons	Engineering	3.19000006
A0098102O	2015-01-08	3 years 4 mons	Engineering	3.13000011
A0054747D	2010-06-24	5 years	Engineering	4.90999985
A0332879M	2011-02-07	4 years 5 mons	Science	3.11999989
A0293425J	2012-04-16	4 years 10 mons	Computing	3.96000004
A0372489S	2011-03-09	3 years 8 mons	Computing	3.5
A0834487W	2010-12-12	3 years 1 mon	Computing	3.75
A0169559J	2012-10-09	3 years 4 mons	Computing	4.67999983
A0931035U	2012-01-21	4 years 3 mons	Arts	4.78999996
A0304422K	2012-02-28	5 years	Engineering	4.3499999
A0716466F	2011-08-05	4 years 3 mons	Computing	3.6099999
A0644863V	2011-03-04	5 years	Computing	4.17000008
A0547230I	2012-09-27	3 years 2 mons	Engineering	3.95000005
A0737048P	2014-05-23	4 years 3 mons	Engineering	3.30999994
A0120338W	2015-10-12	3 years 2 mons	Arts	3.51999998
A0836412K	2012-01-01	3 years 7 mons	Computing	3.92000008
A0801828N	2013-01-27	4 years 10 mons	Computing	4.65999985
A0811791Y	2013-05-18	3 years 6 mons	Science	3.28999996
A0403630I	2011-12-11	3 years 8 mons	Computing	4.46999979
A0724638M	2013-11-08	4 years 10 mons	Arts	4.82999992
A0673019L	2014-01-11	3 years 11 mons	Engineering	3.91000009
A0743224J	2015-03-14	4 years 4 mons	Arts	3.52999997
A0803586S	2011-10-24	3 years 4 mons	Engineering	4.42999983
A0608544P	2015-09-19	4 years 2 mons	Engineering	4.98999977
A0075560E	2013-01-10	4 years	Computing	4.94000006
A0471517G	2010-04-18	4 years 1 mon	Science	3.8599999
A0780585K	2012-05-23	4 years 6 mons	Engineering	4.67999983
A0814862V	2012-12-18	3 years 9 mons	Engineering	4.25
A0985024N	2015-08-09	4 years 3 mons	Engineering	3.6099999
A0460547K	2011-10-13	3 years 4 mons	Computing	3.86999989
A0339183W	2013-11-09	4 years 5 mons	Computing	4.94999981
A0435780H	2013-07-08	5 years	Science	4.4000001
A0317247O	2013-02-23	4 years 8 mons	Computing	3.82999992
A0069305Y	2011-09-18	4 years 5 mons	Engineering	4.92999983
A0018804Y	2010-03-22	3 years 4 mons	Computing	3.02999997
A0207636W	2012-02-22	3 years 5 mons	Science	4.48000002
A0894139Z	2015-05-22	3 years 3 mons	Engineering	3.21000004
A0547193C	2015-02-14	4 years 1 mon	Computing	4.63000011
A0603444L	2010-12-04	3 years 11 mons	Science	4.80000019
A0903060O	2010-07-24	4 years 10 mons	Engineering	3.01999998
A0976525M	2014-12-11	4 years 11 mons	Arts	3.86999989
A0178459T	2010-09-24	3 years 3 mons	Arts	4.48999977
A0044590X	2012-12-15	3 years 11 mons	Computing	4.44000006
A0485034Y	2011-12-10	4 years 7 mons	Arts	3.61999989
A0663083T	2014-08-26	4 years 6 mons	Arts	4.78999996
A0654832Z	2010-04-18	4 years 9 mons	Science	3.98000002
A0489908W	2015-03-28	3 years 3 mons	Arts	4.38999987
A0675774V	2012-02-10	3 years 3 mons	Science	3.83999991
A0454186H	2015-12-11	3 years 6 mons	Engineering	4.36000013
A0145111B	2010-04-26	3 years 9 mons	Arts	4.92000008
A0313462B	2015-11-09	4 years 3 mons	Computing	4.17000008
A0043543C	2015-03-07	3 years 6 mons	Computing	3.30999994
A0452925W	2014-04-27	4 years 10 mons	Science	3.56999993
A0380571D	2010-08-05	3 years 8 mons	Arts	3.82999992
A0540041H	2011-05-05	3 years 8 mons	Engineering	3.07999992
A0585831K	2015-01-20	4 years 9 mons	Science	4.23999977
A0821145K	2011-01-13	4 years	Arts	3.75999999
A0240012J	2015-05-14	3 years 1 mon	Arts	3.51999998
A0219867O	2014-09-07	4 years 4 mons	Science	3.77999997
A0438840L	2011-06-20	3 years 9 mons	Science	3.55999994
A0224754T	2011-05-12	3 years 2 mons	Arts	4.11000013
A0420642P	2013-11-27	3 years 11 mons	Computing	3.86999989
A0266624N	2013-07-09	5 years	Computing	3.1500001
A0825344W	2012-07-04	3 years 2 mons	Computing	3.66000009
A0988380K	2013-02-25	4 years 9 mons	Computing	3.70000005
A0488222P	2013-05-11	3 years 4 mons	Engineering	4.90999985
A0848535O	2014-10-22	3 years 2 mons	Engineering	3.0999999
A0992191F	2010-06-13	3 years 9 mons	Arts	4.55999994
A0612173O	2012-04-01	4 years 7 mons	Computing	4.51999998
A0246777M	2015-07-18	3 years 9 mons	Computing	3.91000009
A0526965A	2015-02-26	4 years 6 mons	Engineering	4.57999992
A0500670L	2014-03-13	4 years 8 mons	Arts	4.88000011
A0260023V	2013-02-20	3 years 6 mons	Computing	4.61000013
A0209389E	2012-01-23	4 years 10 mons	Arts	4.63999987
A0963510V	2014-10-12	4 years 7 mons	Science	3.5
A0455236Q	2015-08-12	3 years 2 mons	Arts	3.94000006
A0864081W	2010-06-26	4 years 4 mons	Engineering	3.73000002
A0746374F	2013-10-17	3 years 1 mon	Engineering	3.6099999
A0918151O	2011-12-18	3 years 1 mon	Computing	4.1500001
A0961489N	2011-11-05	3 years 9 mons	Science	3.07999992
A0890467J	2014-03-11	4 years 7 mons	Engineering	3.8599999
A0320183P	2011-08-04	4 years 3 mons	Engineering	4.78000021
A0415760L	2015-07-26	3 years 5 mons	Science	4.4000001
A0111879U	2012-08-28	4 years 10 mons	Computing	3.53999996
A0441483W	2015-08-12	4 years 2 mons	Engineering	4.34000015
A0222861Z	2010-11-21	3 years 4 mons	Computing	4.96000004
A0524697Y	2012-02-10	4 years 11 mons	Arts	3.5999999
A0324225H	2013-07-12	3 years 8 mons	Arts	3.51999998
A0518920E	2013-05-11	3 years 4 mons	Science	3.48000002
A0135779O	2010-05-21	3 years 1 mon	Engineering	3.8900001
A0035989I	2014-05-01	4 years 8 mons	Arts	4.17999983
A0052520A	2014-06-15	3 years 1 mon	Engineering	3.70000005
A0385672W	2010-04-17	4 years 9 mons	Engineering	3.70000005
A0776949Q	2015-08-07	3 years 8 mons	Computing	3.05999994
A0887879O	2013-09-24	3 years 3 mons	Computing	4.63000011
A0259057W	2015-04-19	3 years 11 mons	Computing	3.79999995
A0957521C	2012-09-21	4 years 4 mons	Science	3.50999999
A0499421K	2010-09-26	4 years 2 mons	Engineering	4.38999987
A0943517B	2011-12-07	4 years 1 mon	Science	4.03999996
A0412398W	2015-09-17	3 years 10 mons	Arts	4.55000019
A0374066X	2010-07-01	4 years	Science	4.1500001
A0284458I	2014-05-22	4 years 1 mon	Science	4.30000019
A0285492Y	2011-12-13	4 years 8 mons	Science	4.23000002
A0906100J	2010-07-11	4 years 3 mons	Computing	3.44000006
A0314802P	2010-05-23	4 years 8 mons	Science	3.74000001
A0316556D	2012-09-13	4 years 2 mons	Computing	4.05999994
A0758308Q	2012-03-23	4 years 5 mons	Arts	4.34000015
A0731808T	2015-01-20	3 years 2 mons	Engineering	4.40999985
A0204359F	2013-06-18	3 years 7 mons	Computing	4.67999983
A0936306J	2010-11-02	3 years 9 mons	Computing	4.8499999
A0639750N	2012-09-26	4 years 2 mons	Science	3.98000002
A0654021C	2010-09-13	3 years 5 mons	Engineering	3.21000004
A0621597B	2013-01-17	4 years	Computing	4.5
A0317041B	2014-11-04	4 years 7 mons	Engineering	3.66000009
A0643833P	2015-10-05	4 years 10 mons	Engineering	4
A0360897Z	2014-07-13	4 years 1 mon	Computing	3.27999997
A0881211L	2010-10-17	4 years 2 mons	Engineering	3.06999993
A0452088A	2010-04-08	4 years 2 mons	Computing	3.1500001
A0284309V	2013-10-18	4 years 5 mons	Engineering	3.99000001
A0868041W	2010-01-28	4 years 8 mons	Computing	4.42999983
A0966641M	2010-01-05	4 years	Science	4.98999977
A0226293M	2010-08-13	3 years 1 mon	Computing	4.76999998
A0915987A	2011-07-27	3 years 1 mon	Engineering	3.01999998
A0085927O	2012-03-02	3 years 6 mons	Science	4.61999989
A0656594G	2015-09-28	3 years 10 mons	Science	4.42999983
A0046917O	2011-09-09	4 years 6 mons	Arts	4.07999992
A0300378V	2014-12-11	3 years 8 mons	Engineering	3.03999996
A0995609G	2015-08-16	4 years	Computing	4.84000015
A0816621Q	2012-06-06	3 years 6 mons	Science	4.15999985
A0580354G	2015-03-02	3 years 2 mons	Engineering	4.71000004
A0732936Y	2015-03-01	3 years 11 mons	Engineering	4.98000002
A0182893A	2015-06-10	3 years 8 mons	Science	3.50999999
A0271884J	2012-10-05	3 years 6 mons	Engineering	3.83999991
A0224649V	2010-02-22	3 years 4 mons	Engineering	4.42000008
A0075372M	2015-02-21	3 years 8 mons	Arts	3.36999989
A0135187E	2012-12-24	4 years 9 mons	Engineering	3.80999994
A0840912I	2010-01-28	4 years 10 mons	Science	4.71999979
A0416464D	2012-05-02	3 years 11 mons	Computing	4.21000004
A0448916X	2015-08-05	4 years 2 mons	Engineering	3.55999994
A0331311F	2010-06-05	4 years 6 mons	Engineering	4.71999979
A0602507X	2010-03-24	4 years 4 mons	Arts	3.49000001
A0958745N	2011-02-11	3 years 3 mons	Engineering	4.38000011
A0743130O	2011-02-01	4 years 6 mons	Arts	3.25
A0960432E	2015-05-06	4 years 9 mons	Computing	3.16000009
A0970716J	2012-12-10	4 years 9 mons	Arts	4.82000017
A0836883D	2010-04-24	3 years 6 mons	Computing	4.98000002
A0213270Q	2015-05-07	3 years 5 mons	Engineering	3.1099999
A0716911T	2011-03-22	3 years 3 mons	Engineering	4.17000008
A0993233A	2010-03-01	4 years 6 mons	Arts	4.90999985
A0314273U	2010-12-07	4 years 11 mons	Engineering	4.96000004
A0109417Q	2012-09-09	5 years	Engineering	3.66000009
A0279983D	2013-03-21	3 years 5 mons	Arts	4.05000019
A0598324R	2011-02-16	3 years 2 mons	Computing	3.0999999
A0020488J	2011-02-15	4 years 6 mons	Engineering	3.50999999
A0110221G	2010-12-11	4 years 6 mons	Engineering	4.13000011
A0077029W	2011-07-06	3 years 1 mon	Computing	4.23999977
A0391281Z	2011-03-07	3 years 1 mon	Computing	4.63000011
A0660393R	2013-04-23	3 years 2 mons	Computing	3.02999997
A0349351F	2015-04-04	5 years	Science	3.63000011
A0586979H	2010-03-11	4 years 11 mons	Science	3.67000008
A0143416G	2012-03-23	4 years 3 mons	Engineering	3.43000007
A0396524K	2015-01-11	3 years 1 mon	Engineering	3.01999998
A0157467X	2013-02-10	3 years 6 mons	Arts	4.75
A0152864G	2011-04-12	4 years	Arts	3.79999995
A0894673S	2013-10-15	3 years 11 mons	Science	3.03999996
A0015551N	2013-09-04	4 years 9 mons	Engineering	4.11999989
A0366931N	2013-07-08	3 years 5 mons	Arts	4.46999979
A0181854J	2010-09-28	4 years 1 mon	Computing	3.43000007
A0969708Q	2011-07-24	3 years 10 mons	Engineering	4.55000019
A0146271V	2011-07-27	4 years 10 mons	Science	3.66000009
A0447708J	2010-04-20	3 years 1 mon	Science	3.51999998
A0770239Z	2012-10-20	4 years	Computing	3.28999996
A0341797R	2013-09-21	4 years	Computing	3.69000006
A0940946P	2011-04-21	3 years 8 mons	Computing	4.8499999
A0846495G	2010-09-16	3 years 7 mons	Arts	4.71000004
A0985423H	2010-03-09	3 years 6 mons	Science	3.06999993
A0115489V	2015-06-14	4 years 6 mons	Arts	3.5
A0360918W	2012-09-23	4 years 2 mons	Computing	3.75
A0360574T	2012-08-09	3 years 7 mons	Engineering	3.72000003
A0119081F	2014-11-09	3 years 1 mon	Engineering	4.63999987
A0821694S	2014-06-20	3 years 11 mons	Science	4.15999985
A0972522D	2011-06-25	4 years	Computing	4.57999992
A0306697E	2015-08-20	4 years 3 mons	Computing	3.23000002
A0431723G	2013-06-04	3 years 2 mons	Computing	4.05000019
A0632227Z	2015-12-18	3 years 1 mon	Science	3.95000005
A0476154V	2014-03-09	4 years 5 mons	Computing	4.88999987
A0240357E	2011-01-04	3 years 7 mons	Science	4.23999977
A0047746R	2012-01-07	4 years 9 mons	Engineering	3.83999991
A0070683J	2014-01-09	4 years 8 mons	Arts	3.71000004
A0831828F	2015-06-09	3 years 6 mons	Science	3.69000006
A0363738Z	2014-11-23	3 years 4 mons	Computing	3.56999993
A0782489C	2014-07-26	3 years 8 mons	Computing	3.42000008
A0181667M	2010-06-02	3 years 2 mons	Science	4.25
A0331465I	2011-11-10	4 years	Arts	3.99000001
A0181453D	2015-02-15	3 years 4 mons	Computing	3.45000005
A0697752I	2012-09-03	4 years 5 mons	Science	3.13000011
A0841910Y	2014-02-17	4 years 3 mons	Computing	4.38000011
A0633875Z	2014-08-24	4 years 4 mons	Computing	3.47000003
A0717626I	2014-05-21	3 years 9 mons	Computing	4.78000021
A0933522U	2015-06-03	3 years 5 mons	Arts	3.74000001
A0186790P	2015-10-07	4 years 4 mons	Arts	4.42999983
A0491575L	2013-06-11	3 years 5 mons	Computing	3.76999998
A0685634H	2015-02-20	3 years 5 mons	Computing	3.73000002
A0327192T	2014-01-11	3 years 5 mons	Arts	3.5999999
A0089082A	2013-12-19	3 years 4 mons	Engineering	4.98000002
A0450395B	2011-03-17	4 years 8 mons	Computing	3.17000008
A0786964L	2014-04-26	3 years 5 mons	Arts	3.13000011
A0426434L	2013-01-05	4 years 1 mon	Arts	4.28999996
A0693069N	2013-09-02	5 years	Science	4.80999994
A0449683Q	2011-01-08	3 years 3 mons	Engineering	3.78999996
A0078033C	2015-06-18	3 years 1 mon	Science	4.86999989
A0966243K	2012-08-19	4 years 11 mons	Computing	4.34000015
A0458564C	2015-09-23	3 years 2 mons	Arts	4.21000004
A0586933Z	2015-07-18	3 years 2 mons	Arts	3.8599999
A0488623G	2015-07-14	4 years	Computing	3.88000011
A0987903Z	2014-12-02	3 years 8 mons	Arts	4.48000002
A0196113E	2014-08-03	4 years 8 mons	Science	3.98000002
A0376682G	2013-12-21	3 years 1 mon	Computing	4.01000023
A0650026N	2010-08-23	4 years 8 mons	Engineering	3.31999993
A0697160X	2012-10-26	3 years 9 mons	Engineering	3.27999997
A0617410N	2015-04-11	3 years 2 mons	Engineering	4.11999989
A0048881A	2010-05-17	4 years 6 mons	Computing	4.75
A0361719V	2012-11-13	3 years 9 mons	Science	4.73000002
A0510911D	2010-10-12	4 years 3 mons	Arts	4.82999992
A0348586Z	2012-08-26	4 years 7 mons	Science	3.57999992
A0208849L	2010-11-22	4 years 1 mon	Computing	4.88000011
A0109458H	2012-07-22	3 years 7 mons	Computing	4.86999989
A0146682J	2010-03-09	5 years	Arts	4.30999994
A0138402D	2014-11-09	3 years 5 mons	Computing	4.05999994
A0002430B	2011-12-28	3 years 9 mons	Arts	4.51999998
A0002862H	2015-01-19	4 years 10 mons	Computing	3.31999993
A0629542H	2011-11-16	4 years 11 mons	Computing	3.56999993
A0863723O	2015-05-25	4 years 5 mons	Science	4.67999983
A0938746Z	2015-05-17	3 years 9 mons	Engineering	3.52999997
A0467317M	2014-11-12	3 years 9 mons	Engineering	4.34000015
A0869880H	2014-02-21	4 years 10 mons	Science	3.70000005
A0608482T	2012-12-26	3 years 3 mons	Computing	4.19999981
A0661937I	2015-10-20	3 years 11 mons	Science	4.03999996
A0333632K	2013-07-18	4 years 10 mons	Computing	4.67999983
A0830034E	2014-01-27	3 years 5 mons	Arts	3.79999995
A0650342Z	2014-03-20	3 years 8 mons	Science	3.11999989
A0566189K	2014-02-18	3 years 11 mons	Arts	4.46999979
A0485402H	2011-03-15	3 years 3 mons	Computing	3.29999995
A0922907B	2012-10-13	4 years 7 mons	Engineering	3.9000001
A0042790V	2013-06-17	4 years 5 mons	Science	3.92000008
A0092207G	2010-06-05	4 years 5 mons	Computing	3.8499999
A0762402D	2013-03-17	3 years 8 mons	Computing	3.1099999
A0716281Y	2010-01-13	3 years 5 mons	Engineering	3.06999993
A0538342J	2015-03-26	3 years 5 mons	Engineering	3.80999994
A0700784N	2013-01-17	4 years 6 mons	Science	4.23000002
A0822386J	2011-11-14	3 years 6 mons	Engineering	4.07000017
A0567445A	2013-01-27	4 years 4 mons	Science	4.92999983
A0277881J	2012-03-07	4 years 5 mons	Science	3.66000009
A0917697P	2014-03-28	3 years 4 mons	Science	4.44000006
A0321722J	2015-02-20	4 years	Science	4.03000021
A0842054G	2012-01-18	4 years 9 mons	Science	4.30000019
A0060804Y	2014-05-27	3 years 4 mons	Arts	3.44000006
A0075920K	2014-05-03	3 years 11 mons	Arts	4.96999979
A0670124T	2013-01-21	3 years 5 mons	Arts	4.46000004
A0024691R	2015-01-09	3 years 2 mons	Science	3.71000004
A0935906Y	2012-11-20	3 years 6 mons	Computing	3.50999999
A0262435O	2015-05-24	4 years 5 mons	Science	3.08999991
A0800892T	2014-05-04	4 years	Arts	4.71999979
A0885528U	2010-03-17	3 years 3 mons	Arts	3.75999999
A0892355J	2010-09-12	3 years 3 mons	Science	4.28000021
A0009950K	2015-07-28	4 years 1 mon	Science	4.53000021
A0544217E	2013-05-08	4 years 6 mons	Science	3.92000008
A0651013V	2015-07-23	4 years 3 mons	Engineering	4.6500001
A0555933Y	2013-02-05	4 years 8 mons	Science	4.05000019
A0940272P	2014-11-28	4 years 5 mons	Science	4.07000017
A0151084V	2014-05-02	4 years 5 mons	Arts	4.55000019
A0990327N	2012-04-21	4 years 2 mons	Computing	3.73000002
A0863805Y	2010-01-18	4 years 4 mons	Engineering	3.22000003
A0266066U	2013-06-03	4 years 10 mons	Engineering	4.36000013
A0727134G	2010-03-19	3 years 3 mons	Arts	4.76999998
A0585986E	2010-03-14	3 years 4 mons	Arts	3.83999991
A0406268T	2015-01-09	3 years 10 mons	Science	3.57999992
A0645481Q	2013-07-02	3 years 3 mons	Computing	4.21999979
A0799246U	2011-02-16	3 years 3 mons	Arts	4.13000011
A0908646P	2014-03-14	4 years	Science	3.68000007
A0409876L	2015-01-06	4 years 8 mons	Science	4.11999989
A0366452M	2015-09-05	4 years 9 mons	Engineering	3.5
A0230822K	2012-05-17	4 years 7 mons	Arts	4.63999987
A0604637Q	2012-04-16	3 years 1 mon	Arts	4.48000002
A0585390Q	2010-05-17	3 years 10 mons	Science	3.33999991
A0203573T	2014-06-20	4 years 8 mons	Science	3.38000011
A0498860P	2010-06-01	5 years	Arts	3.66000009
A0117125Q	2010-12-02	4 years 11 mons	Arts	4.73999977
A0009256Q	2015-02-19	3 years 7 mons	Arts	4.71000004
A0353578W	2011-01-07	3 years 7 mons	Computing	3.16000009
A0024961D	2010-07-20	3 years 8 mons	Computing	3.75999999
A0381405V	2013-04-18	3 years 9 mons	Computing	4.71000004
A0438232V	2011-05-23	4 years 1 mon	Engineering	4.19999981
A0565317R	2010-11-08	3 years 11 mons	Engineering	3.38000011
A0332777X	2015-11-27	4 years 11 mons	Engineering	3.26999998
A0194906J	2011-05-06	3 years 9 mons	Engineering	4.53999996
A0256921N	2015-01-17	3 years 2 mons	Arts	4.28000021
A0188956N	2014-06-28	4 years 3 mons	Arts	3.5999999
A0511670W	2011-06-17	4 years 5 mons	Computing	4.92000008
A0030040A	2014-12-21	4 years 6 mons	Engineering	4.53999996
A0782149R	2015-02-06	4 years 5 mons	Arts	3.6099999
A0148926H	2011-03-20	4 years 1 mon	Arts	4.13000011
A0274953J	2014-12-26	3 years 11 mons	Computing	3.36999989
A0519728O	2014-04-16	4 years 11 mons	Engineering	3.47000003
A0649404W	2012-01-13	4 years 8 mons	Arts	3.75999999
A0924417W	2010-02-10	3 years 10 mons	Engineering	3.45000005
A0762680N	2012-04-22	4 years 3 mons	Arts	3.73000002
A0215308D	2010-02-24	3 years 6 mons	Arts	4.34000015
A0460170L	2014-07-01	4 years 9 mons	Science	3.6500001
A0176463S	2012-05-17	4 years 9 mons	Computing	4.32000017
A0909346I	2011-08-10	3 years 10 mons	Computing	3.97000003
A0864345Q	2014-05-26	3 years 5 mons	Science	4.38000011
A0315111U	2014-05-19	4 years 7 mons	Arts	3.67000008
A0291449Z	2013-05-08	4 years 10 mons	Computing	4.40999985
A0698731C	2010-02-26	3 years 11 mons	Science	3.30999994
A0706780F	2015-07-07	3 years 3 mons	Science	4.30999994
A0757213N	2010-11-28	3 years 6 mons	Computing	3.32999992
A0588700V	2011-06-13	4 years 1 mon	Computing	4.46000004
A0374979M	2012-07-03	4 years 7 mons	Science	4.53999996
A0740083Z	2011-12-07	4 years 5 mons	Science	4.9000001
A0153280R	2013-05-25	4 years 8 mons	Computing	3.93000007
A0191129T	2012-10-25	4 years 11 mons	Science	4.0999999
A0226311F	2015-11-26	4 years 2 mons	Science	4.55999994
A0611570P	2010-09-16	3 years 6 mons	Arts	3.8900001
A0876345K	2015-01-12	3 years 6 mons	Engineering	3.52999997
A0462284C	2014-11-25	3 years 4 mons	Science	3.56999993
A0390788E	2014-09-15	4 years 5 mons	Science	3.8499999
A0780861T	2014-12-10	3 years 7 mons	Engineering	4.71000004
A0030356E	2015-04-22	3 years 5 mons	Arts	4.80000019
A0180412L	2010-04-15	3 years 5 mons	Science	4.15999985
A0321369Z	2014-10-14	4 years 11 mons	Science	3.25
A0345588T	2015-06-24	3 years 6 mons	Engineering	3.81999993
A0629668N	2010-07-16	4 years 9 mons	Engineering	4.76999998
A0418430I	2015-05-25	3 years 11 mons	Arts	4.11999989
A0925770J	2013-12-17	5 years	Engineering	3.76999998
A0280771O	2011-10-06	3 years 3 mons	Computing	3.17000008
A0202339F	2010-06-15	4 years 7 mons	Arts	3.02999997
A0844010S	2014-09-17	3 years 11 mons	Computing	4.13999987
A0128907X	2012-10-28	4 years 4 mons	Computing	3.78999996
A0685535Z	2012-11-05	3 years 6 mons	Engineering	3.45000005
A0312201Z	2015-04-25	4 years 10 mons	Arts	4.26999998
A0583215H	2015-12-19	4 years 5 mons	Computing	3.18000007
A0154940F	2011-11-28	4 years	Science	4.63999987
A0118949M	2011-10-03	3 years 11 mons	Science	4.88999987
A0836927X	2015-08-13	3 years 7 mons	Science	3.83999991
A0671592P	2011-01-09	4 years 5 mons	Arts	4.84000015
A0522237I	2010-12-15	4 years 2 mons	Arts	4.78000021
A0930596E	2011-06-20	4 years 11 mons	Engineering	4.03000021
A0504363P	2014-07-05	3 years 2 mons	Computing	4.8499999
A0871201Y	2015-03-12	3 years 7 mons	Arts	4.55000019
A0535133B	2015-02-27	4 years 6 mons	Computing	4.11000013
A0207983W	2014-02-03	3 years 8 mons	Engineering	4.21999979
A0340352N	2014-11-18	3 years 8 mons	Arts	4.13000011
A0051503N	2015-07-16	4 years 4 mons	Science	3.98000002
A0387202Q	2011-08-11	4 years 10 mons	Arts	3.43000007
A0585897Q	2014-12-20	3 years 10 mons	Computing	3.76999998
A0211542G	2013-06-04	4 years 1 mon	Computing	4.01000023
A0722176C	2010-08-15	3 years 3 mons	Science	3.02999997
A0429294N	2014-06-04	3 years 2 mons	Arts	4.21000004
A0418625V	2014-11-22	3 years 4 mons	Arts	4.30000019
A0681927Z	2013-10-07	4 years 9 mons	Arts	3.4000001
A0435076U	2015-06-01	4 years 10 mons	Science	3.38000011
A0647183Y	2011-08-05	4 years 3 mons	Science	3.32999992
A0597054T	2011-11-27	4 years	Science	3.95000005
A0872823W	2013-04-02	3 years 2 mons	Science	3.13000011
A0911899T	2014-02-26	3 years 10 mons	Science	3.00999999
A0500047G	2015-08-08	3 years 1 mon	Science	3.76999998
A0579402I	2014-05-10	4 years 1 mon	Computing	3.3599999
A0809552L	2011-11-17	4 years 1 mon	Science	3.28999996
A0193270L	2014-12-17	3 years 4 mons	Arts	4.07000017
A0276204O	2011-11-25	4 years 9 mons	Engineering	4.07999992
A0698353P	2014-01-02	4 years	Science	3.3499999
A0814439T	2013-08-12	4 years 2 mons	Engineering	4.92000008
A0137664R	2010-09-23	4 years 2 mons	Arts	4.30999994
A0275165D	2012-03-06	3 years 5 mons	Science	3.54999995
A0798026H	2012-12-27	4 years 7 mons	Computing	3
A0606461E	2011-12-06	4 years 11 mons	Arts	3.31999993
A0623669N	2014-02-15	3 years 6 mons	Computing	4.48000002
A0216662N	2010-07-12	4 years 9 mons	Computing	3.69000006
A0199090N	2010-11-04	3 years 8 mons	Computing	3.1099999
A0969166N	2014-05-07	3 years 6 mons	Science	4.73999977
A0550159R	2014-04-06	3 years 4 mons	Computing	4.78999996
A0561187X	2014-12-22	3 years 2 mons	Arts	3.06999993
A0310950B	2010-02-22	4 years 9 mons	Arts	4.01999998
A0237306Z	2013-10-09	4 years 5 mons	Science	3.76999998
A0684873G	2015-02-26	4 years 9 mons	Science	4.03000021
A0583113A	2014-12-06	3 years 6 mons	Engineering	3.97000003
A0987972Q	2012-01-14	3 years 10 mons	Engineering	4.48999977
A0843950R	2012-07-10	4 years 1 mon	Engineering	4.48000002
A0401912W	2014-08-13	3 years 8 mons	Engineering	4.73000002
A0229319S	2014-03-20	3 years 3 mons	Science	3.43000007
A0620484N	2014-01-16	5 years	Science	4.03999996
A0158769T	2012-12-27	3 years 9 mons	Computing	4.32999992
A0043859W	2012-04-28	4 years 7 mons	Arts	4.32999992
A0112815J	2011-09-25	4 years 11 mons	Computing	3.29999995
A0789715Q	2013-09-19	3 years 11 mons	Arts	4.48000002
A0697807R	2011-02-28	4 years 10 mons	Science	3.26999998
A0587927P	2010-11-06	3 years 10 mons	Arts	3.3599999
A0484141F	2012-04-15	4 years 6 mons	Engineering	4.92000008
A0976874L	2010-07-10	4 years 10 mons	Arts	3.5999999
A0433020E	2013-06-16	4 years 7 mons	Science	3.44000006
A0251545B	2014-04-27	4 years 6 mons	Engineering	3.8900001
A0237185P	2014-08-17	4 years	Arts	3.21000004
A0218382V	2012-02-02	4 years 7 mons	Science	3.03999996
A0716346L	2010-10-06	4 years 11 mons	Computing	3.77999997
A0084711B	2012-08-04	4 years 10 mons	Science	3.86999989
A0024093V	2010-10-16	3 years 10 mons	Science	3.20000005
A0635850G	2010-06-22	3 years 10 mons	Arts	3.6099999
A0240826J	2012-09-05	4 years 8 mons	Science	4.69000006
A0480305U	2015-11-02	4 years 6 mons	Engineering	4.75
A0172565I	2010-04-01	3 years 7 mons	Computing	3.11999989
A0774973H	2012-10-08	3 years 6 mons	Engineering	4.57999992
A0243305T	2013-11-05	4 years 3 mons	Science	4.07000017
A0869374L	2011-09-26	4 years	Computing	3.75
A0166797L	2013-09-01	3 years 5 mons	Engineering	3.33999991
A0826467C	2010-09-24	3 years 7 mons	Computing	3.6099999
A0881211V	2015-04-08	4 years 10 mons	Arts	4.73999977
A0420853R	2012-02-23	4 years 11 mons	Arts	3.96000004
A0795824O	2013-11-05	4 years	Computing	4.07999992
A0286040B	2014-07-26	3 years 11 mons	Science	3.75999999
A0842412L	2012-07-19	4 years 7 mons	Science	4.51000023
A0015413Z	2010-06-05	3 years 11 mons	Engineering	3.55999994
A0015730B	2012-05-04	4 years 2 mons	Arts	4.57999992
A0847717E	2011-06-09	4 years 4 mons	Arts	3.61999989
A0252357U	2010-03-24	4 years 10 mons	Engineering	3.25999999
A0159823L	2011-10-05	4 years 8 mons	Science	4.05000019
A0646754T	2014-08-11	4 years	Arts	4.78999996
A0940772X	2013-08-09	4 years 11 mons	Computing	3.9000001
A0520258A	2012-11-18	4 years	Arts	4.03000021
A0220705H	2014-11-09	5 years	Computing	3.8900001
A0973607N	2013-04-23	4 years 10 mons	Science	3.18000007
A0361873X	2010-10-14	3 years 3 mons	Arts	3.83999991
A0578258U	2012-02-12	3 years 8 mons	Science	4.6500001
A0109120S	2013-10-18	3 years 11 mons	Science	4.61000013
A0066761P	2011-03-13	4 years 3 mons	Engineering	3.8599999
A0799430I	2010-12-06	5 years	Engineering	3.29999995
A0877420S	2010-04-12	3 years 7 mons	Computing	3.01999998
A0712604D	2013-01-21	4 years 6 mons	Engineering	4.42999983
A0595282U	2011-03-21	3 years 6 mons	Arts	3.73000002
A0231756G	2015-12-21	4 years 8 mons	Engineering	4.38000011
A0110047M	2012-01-12	4 years 11 mons	Engineering	3.99000001
A0625279E	2015-01-09	4 years 2 mons	Computing	3.0999999
A0823598Y	2014-07-10	3 years 10 mons	Engineering	3.78999996
A0471458V	2014-01-20	4 years 11 mons	Engineering	4.88000011
A0850606W	2014-02-06	4 years 3 mons	Arts	4.15999985
A0079571O	2015-10-27	4 years 8 mons	Arts	4.32999992
A0000297G	2011-04-15	5 years	Science	3.3499999
A0682692D	2014-01-05	3 years 4 mons	Computing	3.1099999
A0146276P	2010-03-03	4 years 4 mons	Science	3.72000003
A0324445X	2014-08-19	4 years 3 mons	Computing	4.26999998
A0083744B	2012-11-21	4 years 11 mons	Science	4.3499999
A0708423Y	2014-03-06	3 years 1 mon	Science	4.5999999
A0665197G	2010-09-03	3 years 7 mons	Arts	3.86999989
A0169879E	2014-08-17	4 years 11 mons	Arts	4.94000006
A0542204C	2015-01-11	3 years 11 mons	Arts	3.88000011
A0847862I	2012-03-23	4 years 4 mons	Computing	3.6099999
A0439601E	2014-09-19	5 years	Engineering	4.65999985
A0792904H	2012-10-22	4 years 4 mons	Science	3.4000001
A0476355Z	2014-01-02	3 years 7 mons	Engineering	3.6500001
A0662945D	2012-07-20	3 years 4 mons	Arts	4.32999992
A0450325B	2010-09-13	3 years 1 mon	Computing	4
A0785165S	2012-10-03	4 years 9 mons	Science	4.63000011
A0417253J	2014-09-01	3 years 10 mons	Computing	4.28999996
A0091722F	2014-04-09	3 years 1 mon	Arts	4
A0570471U	2015-03-08	4 years 1 mon	Engineering	3.06999993
A0605356L	2012-06-10	4 years 7 mons	Arts	3.41000009
A0599515L	2011-12-02	3 years 4 mons	Engineering	3.47000003
A0453510F	2015-04-14	4 years 11 mons	Arts	3.01999998
A0424881T	2011-08-16	4 years 4 mons	Engineering	3.81999993
A0062911R	2012-05-01	3 years 11 mons	Arts	3.5999999
A0478918F	2011-05-13	3 years 9 mons	Computing	4.80999994
A0486622C	2014-07-07	3 years 5 mons	Computing	3.56999993
A0149351E	2013-09-08	3 years 4 mons	Science	3.0999999
A0661398E	2015-01-13	3 years 11 mons	Engineering	4.34000015
A0298748U	2013-04-23	4 years 9 mons	Engineering	4.96999979
A0491723Y	2011-04-21	4 years	Engineering	3.97000003
A0610121F	2015-03-28	4 years 3 mons	Engineering	4.5
A0116954X	2015-02-24	3 years 8 mons	Computing	4.5
A0426573Q	2014-08-06	4 years 6 mons	Science	4.67000008
A0354930T	2013-02-02	3 years 4 mons	Arts	4.57000017
A0482984A	2011-05-03	3 years 5 mons	Computing	3.47000003
A0530387G	2012-11-17	4 years	Engineering	3.80999994
A0124795G	2015-09-01	3 years 7 mons	Arts	3.06999993
A0245454G	2010-01-01	3 years 3 mons	Science	3.19000006
A0446866F	2011-12-14	4 years 10 mons	Computing	3.73000002
A0024666K	2012-08-12	4 years 8 mons	Engineering	3.21000004
A0745202R	2014-07-27	4 years 5 mons	Computing	3.03999996
A0730394J	2010-02-05	4 years 3 mons	Science	4.0999999
A0842742B	2011-11-07	3 years 11 mons	Computing	3.05999994
A0977298R	2014-07-10	3 years 8 mons	Arts	4.53999996
A0224311N	2014-07-18	3 years 3 mons	Computing	4.07999992
A0321726C	2012-05-06	3 years 2 mons	Arts	4.57000017
A0088428Y	2014-11-25	4 years 10 mons	Engineering	3.22000003
A0839574X	2015-08-10	3 years 5 mons	Computing	4.48999977
A0757018S	2011-11-17	4 years 9 mons	Science	3.4000001
A0656190J	2013-04-22	3 years 1 mon	Engineering	3.07999992
A0653471I	2012-03-02	3 years 11 mons	Science	4.67000008
A0561348H	2015-03-20	3 years 1 mon	Science	3.94000006
A0213128G	2015-05-01	3 years 1 mon	Engineering	4.30999994
A0945662K	2013-03-08	4 years 3 mons	Engineering	4.23999977
A0215542Q	2014-07-26	4 years 7 mons	Arts	3.1099999
A0830274M	2012-12-02	4 years	Arts	3.03999996
A0009377L	2011-06-07	3 years 9 mons	Engineering	3.98000002
A0506254D	2014-02-25	3 years 2 mons	Science	4.13000011
A0763613M	2010-05-20	3 years 1 mon	Arts	3.6400001
A0221086M	2015-06-25	3 years 10 mons	Engineering	3.06999993
A0502472P	2015-12-05	4 years 11 mons	Computing	4.80999994
A0656528D	2011-10-16	4 years	Computing	4.0999999
A0710190F	2011-07-01	3 years 7 mons	Science	3.83999991
A0815348V	2010-02-02	3 years 7 mons	Science	4.26000023
A0798821K	2014-11-27	4 years 2 mons	Science	3.56999993
A0708429L	2012-10-05	3 years 7 mons	Computing	4.80000019
A0787425A	2010-05-12	3 years 6 mons	Arts	3.68000007
A0152136O	2012-08-13	3 years 3 mons	Engineering	3.24000001
A0236646Y	2010-10-02	3 years 1 mon	Computing	3.6099999
A0595700P	2014-09-01	4 years 1 mon	Science	4.78999996
A0385220S	2013-12-08	3 years 8 mons	Computing	4.07999992
A0840065D	2010-07-26	3 years 1 mon	Engineering	3.32999992
A0967636K	2015-10-09	4 years 5 mons	Engineering	4.32999992
A0154635K	2012-12-26	4 years 10 mons	Computing	3.3599999
A0398508T	2014-03-08	3 years 2 mons	Engineering	3.27999997
A0005850J	2011-06-19	3 years 5 mons	Science	3.29999995
A0362478F	2012-03-12	5 years	Engineering	4.67999983
A0846204M	2010-08-04	3 years 9 mons	Science	4.98000002
A0411809J	2012-03-08	4 years 10 mons	Engineering	3.50999999
A0177285X	2014-01-02	4 years 7 mons	Arts	3.66000009
A0772291J	2011-08-24	4 years 8 mons	Computing	3.46000004
A0831421H	2011-07-23	4 years 5 mons	Computing	4.80999994
A0678355B	2010-12-24	4 years 7 mons	Engineering	3.47000003
A0670771M	2014-05-18	4 years 3 mons	Science	4.30999994
A0879274R	2012-03-28	3 years 5 mons	Engineering	3.6400001
A0872394Z	2014-10-03	3 years 9 mons	Science	3.24000001
A0295851F	2010-09-21	3 years 2 mons	Computing	4.38000011
A0316847I	2010-03-28	3 years 9 mons	Computing	3.94000006
A0669583Q	2010-06-27	3 years 4 mons	Arts	4.80000019
A0803816K	2013-11-26	4 years 4 mons	Engineering	3.5
A0152934N	2013-06-17	4 years 5 mons	Computing	4.03999996
A0633475N	2013-05-14	4 years 9 mons	Computing	4.30000019
A0276323Y	2014-04-01	4 years 3 mons	Computing	4.38999987
A0123833Q	2015-09-14	4 years 2 mons	Arts	3.78999996
A0286136W	2010-01-26	3 years 3 mons	Engineering	3.02999997
A0238921G	2011-09-02	4 years 10 mons	Computing	4.36000013
A0005489Z	2015-06-11	3 years 5 mons	Science	4.5999999
A0818410H	2010-02-14	3 years 4 mons	Computing	4.53000021
A0736118V	2015-05-04	4 years 2 mons	Computing	4.44999981
A0103656T	2012-06-25	4 years 9 mons	Computing	4.4000001
A0878157M	2011-03-16	3 years 9 mons	Engineering	3.79999995
A0943429B	2012-02-11	4 years 7 mons	Engineering	3.95000005
A0951839Q	2011-12-14	4 years 6 mons	Arts	4.69000006
A0127212W	2013-09-07	4 years	Engineering	4.48000002
A0573173J	2011-04-11	4 years 7 mons	Computing	3.68000007
A0011680U	2012-06-18	4 years 6 mons	Engineering	4.65999985
A0433770V	2012-12-16	3 years 1 mon	Arts	4.61999989
A0759713T	2010-03-08	4 years 1 mon	Engineering	3.3599999
A0859146P	2011-08-01	3 years 4 mons	Arts	3.6500001
A0793893H	2014-11-27	4 years	Engineering	4.42999983
A0060106Y	2012-02-20	4 years 10 mons	Science	4.59000015
A0147881V	2011-03-28	3 years 9 mons	Engineering	4.65999985
A0849687U	2014-10-02	4 years 11 mons	Engineering	4.46000004
A0370446Z	2011-03-03	4 years 3 mons	Arts	4.4000001
A0449447M	2012-10-06	5 years	Computing	4.63999987
A0247215K	2015-06-08	3 years 8 mons	Computing	3.00999999
A0820203U	2014-04-21	4 years 2 mons	Computing	3.77999997
A0212257N	2011-12-28	3 years 1 mon	Computing	4.11999989
A0496275A	2011-03-25	4 years 6 mons	Science	3.71000004
A0225963A	2012-10-15	4 years 11 mons	Science	3.96000004
A0355587Q	2013-09-22	3 years 3 mons	Arts	3.9000001
A0423739I	2012-02-22	4 years 5 mons	Arts	4.73999977
A0852368T	2010-03-23	4 years 7 mons	Engineering	4.94999981
A0654879A	2014-05-19	3 years 5 mons	Engineering	3.06999993
A0538271H	2012-12-09	3 years 3 mons	Computing	3.36999989
A0296139I	2010-12-09	4 years 8 mons	Science	3.46000004
A0284332R	2013-01-06	4 years 1 mon	Computing	3.9000001
A0825372Q	2015-01-22	4 years 10 mons	Computing	4.88999987
A0120945Z	2011-06-21	4 years 10 mons	Computing	4
A0572975X	2014-09-08	3 years 7 mons	Arts	4.38000011
A0238441F	2014-06-14	3 years 11 mons	Computing	3.01999998
A0379344R	2012-08-20	3 years 10 mons	Arts	4.13999987
A0881557B	2015-04-27	4 years 1 mon	Computing	3.72000003
A0971679L	2015-11-05	3 years 8 mons	Computing	3.28999996
A0599178W	2011-06-16	3 years 11 mons	Computing	4.96999979
A0605545U	2015-08-28	3 years 9 mons	Science	3.42000008
A0636878N	2013-07-14	3 years 6 mons	Arts	3.05999994
A0426096D	2015-03-02	3 years 1 mon	Engineering	3.53999996
A0236662P	2015-10-09	4 years 2 mons	Engineering	4.01999998
A0314478G	2015-04-04	3 years 4 mons	Computing	3.70000005
A0959995E	2014-04-11	3 years 10 mons	Engineering	4.94000006
A0007487D	2013-07-04	3 years 10 mons	Science	4.57000017
A0038289M	2012-07-19	3 years 6 mons	Science	4
A0926072J	2015-05-10	3 years 5 mons	Engineering	4.19999981
A0712672W	2010-10-02	4 years 5 mons	Computing	3.44000006
A0516317C	2015-01-03	3 years 9 mons	Computing	4.98999977
A0167416A	2010-10-26	3 years 5 mons	Engineering	3.3499999
A0754419K	2011-12-16	4 years	Engineering	4.4000001
A0223496S	2010-01-02	4 years 1 mon	Engineering	4.07999992
A0846197B	2013-05-27	4 years 5 mons	Science	4.67999983
A0103621B	2013-08-19	3 years 4 mons	Engineering	3.25999999
A0175952C	2014-09-18	3 years 5 mons	Arts	3.41000009
A0440666C	2014-03-26	3 years 8 mons	Science	4.03999996
A0776559M	2012-10-28	3 years 2 mons	Computing	3.33999991
A0154753B	2012-06-19	3 years 1 mon	Engineering	3.75
A0110644L	2015-06-01	4 years 7 mons	Arts	4.15999985
A0388548H	2015-05-14	4 years 5 mons	Computing	3.00999999
A0879278R	2012-09-23	4 years 11 mons	Computing	4.51999998
A0777116T	2011-10-22	4 years 10 mons	Engineering	3.80999994
A0075202F	2014-08-02	3 years 11 mons	Computing	3.30999994
A0062741O	2012-08-12	4 years 5 mons	Computing	4.0999999
A0828719Z	2012-10-11	4 years 9 mons	Engineering	4.69999981
A0912065N	2011-02-22	3 years 1 mon	Arts	3.99000001
A0523390W	2011-01-12	4 years 4 mons	Arts	4.75
A0390653S	2015-10-07	3 years 6 mons	Science	4.36000013
A0498827Y	2014-06-13	4 years 1 mon	Arts	4.71999979
A0100640T	2012-02-20	4 years	Computing	4.55000019
A0112957U	2014-05-03	4 years 6 mons	Arts	4.13999987
A0964396K	2015-02-09	4 years 2 mons	Science	4.09000015
A0644994K	2013-03-23	3 years 3 mons	Arts	4.36999989
A0830856G	2015-04-23	4 years 2 mons	Arts	3.76999998
A0287756B	2010-08-21	3 years 10 mons	Science	4.71999979
A0179751D	2010-05-04	5 years	Engineering	3.16000009
A0092068L	2012-08-10	4 years 11 mons	Arts	4.59000015
A0209292T	2013-08-27	3 years 1 mon	Engineering	3.75999999
A0957316W	2010-10-12	3 years 9 mons	Computing	4.5
A0450706B	2011-03-11	4 years 8 mons	Arts	3.67000008
A0723774I	2014-05-07	4 years 2 mons	Science	3.13000011
A0717593I	2013-08-15	4 years 3 mons	Science	4.13000011
A0274592R	2014-05-09	4 years 6 mons	Computing	3.9000001
A0058813Z	2015-11-13	4 years 10 mons	Science	3.72000003
A0500057D	2014-09-24	3 years 8 mons	Science	4.46000004
A0407498E	2010-11-02	4 years 11 mons	Engineering	4.03999996
A0372703M	2012-12-07	4 years 10 mons	Science	4.07000017
A0794338R	2010-10-03	4 years 6 mons	Computing	4.55000019
A0387139M	2012-12-09	4 years 3 mons	Science	4.15999985
A0201569G	2010-09-21	4 years 6 mons	Science	4.21000004
A0290437M	2011-02-12	3 years 3 mons	Science	3.8599999
A0932800J	2015-01-12	3 years 4 mons	Arts	3.18000007
A0717461I	2015-03-08	3 years 6 mons	Engineering	4.98999977
A0086991O	2015-03-02	4 years 11 mons	Arts	4.05000019
A0943269O	2014-04-04	3 years 3 mons	Science	4.82000017
A0219088F	2011-03-27	4 years 1 mon	Engineering	4.86999989
A0381683H	2014-10-24	3 years 11 mons	Arts	4.55000019
A0776384Q	2011-03-25	3 years 8 mons	Computing	4.86999989
A0020845T	2013-02-16	4 years 3 mons	Computing	3.98000002
A0314366K	2015-05-13	4 years 7 mons	Arts	3.42000008
A0245724K	2012-11-24	3 years 10 mons	Computing	4.63000011
A0589837G	2014-05-13	3 years 11 mons	Computing	3.76999998
A0547249T	2010-03-06	4 years 7 mons	Science	4.28999996
A0909510M	2013-08-20	3 years 11 mons	Engineering	3.55999994
A0004431T	2011-07-26	3 years 9 mons	Arts	4.61000013
A0489077L	2010-02-26	3 years 1 mon	Computing	3.41000009
A0753632L	2013-09-13	3 years 6 mons	Computing	4.96999979
A0703361E	2011-05-17	3 years 10 mons	Arts	4.44999981
A0451152D	2010-11-22	3 years 6 mons	Science	3.71000004
A0421935V	2015-06-25	4 years 5 mons	Engineering	3.27999997
A0265734O	2012-01-16	4 years 5 mons	Engineering	3.01999998
A0108792R	2011-08-06	5 years	Engineering	3.46000004
A0015401G	2010-12-26	3 years 4 mons	Science	3.16000009
A0363117N	2011-09-12	3 years 3 mons	Science	3.68000007
A0048947R	2012-04-03	4 years 3 mons	Computing	3.36999989
A0438855E	2014-09-21	4 years 5 mons	Science	3.94000006
A0984942I	2014-04-25	4 years	Computing	4.07999992
A0779017T	2012-01-05	5 years	Engineering	3.93000007
A0038482O	2015-11-11	4 years 2 mons	Science	4.57999992
A0148716Y	2010-05-05	3 years 1 mon	Arts	3.26999998
A0967155Y	2012-03-02	4 years 3 mons	Arts	3.83999991
A0554701H	2015-03-19	4 years 11 mons	Arts	3.02999997
A0312834P	2011-09-13	4 years 7 mons	Computing	3.44000006
A0404977F	2011-10-03	4 years 5 mons	Arts	3.21000004
A0886344W	2012-04-17	4 years 8 mons	Arts	3.19000006
A0670446N	2014-11-27	4 years 7 mons	Computing	4.38000011
A0092654V	2014-10-02	3 years 11 mons	Computing	3.92000008
A0324196W	2011-07-25	4 years 1 mon	Science	3.71000004
A0172053N	2011-07-06	5 years	Computing	4.61999989
A0306027K	2010-09-02	4 years 10 mons	Computing	4.5
A0384204W	2014-02-16	3 years 7 mons	Engineering	3.24000001
A0265973R	2011-08-23	4 years 7 mons	Science	3
A0764255P	2014-12-08	4 years	Engineering	3.74000001
A0091973V	2013-01-25	3 years 2 mons	Computing	3.92000008
A0512440U	2010-04-06	4 years 1 mon	Arts	4.1500001
A0915333W	2010-09-25	4 years 6 mons	Arts	4.07000017
A0119511U	2014-06-24	3 years 9 mons	Science	4.94999981
A0998326X	2012-07-13	3 years 8 mons	Science	4.46000004
A0725144V	2011-06-01	3 years 10 mons	Science	3.86999989
A0845794R	2012-06-26	3 years 8 mons	Science	4.71000004
A0455525O	2014-09-08	4 years 8 mons	Arts	3.74000001
A0228615U	2012-08-15	4 years 10 mons	Computing	3.20000005
A0872178N	2015-06-28	3 years 6 mons	Arts	4.26999998
A0206204X	2012-11-05	3 years 3 mons	Engineering	4.09000015
A0897238Q	2011-11-21	4 years 11 mons	Arts	4.34000015
A0802125T	2013-11-03	3 years 7 mons	Engineering	3.6400001
A0161040B	2015-11-08	3 years 11 mons	Arts	3.18000007
A0699504I	2011-02-28	4 years 1 mon	Arts	3.41000009
A0289807W	2010-11-28	3 years 9 mons	Science	4.84000015
A0981378V	2010-11-12	3 years 10 mons	Computing	3.8499999
A0525140C	2012-05-02	4 years 5 mons	Arts	4.78000021
A0537011Q	2012-11-19	4 years 6 mons	Science	4.01999998
A0883938M	2013-02-03	3 years 11 mons	Arts	4.61999989
A0819699F	2014-12-28	3 years 5 mons	Computing	4.92000008
A0983806H	2015-07-26	3 years 7 mons	Engineering	3.73000002
A0536409V	2014-02-14	3 years 10 mons	Engineering	4.42000008
A0019822F	2012-04-03	3 years 1 mon	Science	3.02999997
A0888375Z	2010-10-06	3 years 4 mons	Science	3.99000001
A0434983W	2015-01-26	4 years 5 mons	Arts	3.6400001
A0529268X	2014-06-14	3 years 5 mons	Engineering	3.1099999
A0043307N	2011-09-27	3 years 8 mons	Science	4.26000023
A0903157R	2015-08-27	4 years 11 mons	Arts	4.34000015
A0490639U	2013-12-13	4 years 2 mons	Arts	4.48000002
A0578875C	2012-04-04	4 years 6 mons	Computing	4.9000001
A0426307B	2010-03-08	4 years 10 mons	Engineering	4.38000011
A0391032K	2011-01-09	4 years 2 mons	Engineering	4.07999992
A0806921L	2013-05-18	3 years 6 mons	Arts	3.36999989
A0089184Z	2014-12-03	4 years 4 mons	Arts	4.63000011
A0399387D	2013-04-04	4 years 5 mons	Science	3.1500001
A0751740B	2010-07-05	3 years 4 mons	Engineering	4.86999989
A0945560I	2012-04-17	4 years 7 mons	Science	4.73999977
A0236311Y	2013-03-20	4 years 5 mons	Arts	3.69000006
A0570289M	2014-02-06	5 years	Computing	4.98999977
A0779856N	2013-04-08	4 years 6 mons	Engineering	4.63000011
A0803576H	2014-03-27	4 years 11 mons	Science	3.74000001
A0766641S	2010-10-09	4 years 8 mons	Computing	3.50999999
A0577181Y	2011-04-19	3 years 4 mons	Engineering	3.69000006
A0337437G	2012-05-13	4 years 1 mon	Engineering	3.74000001
A0375623Y	2011-06-23	5 years	Computing	4.13999987
A0360709T	2013-01-28	5 years	Science	3.3900001
A0984464X	2011-08-05	4 years 11 mons	Science	3.3599999
A0863483M	2012-01-25	5 years	Computing	3.3499999
A0883343A	2010-08-04	4 years 8 mons	Arts	3.72000003
A0943860P	2012-05-24	3 years 3 mons	Computing	3.00999999
A0805608U	2012-08-13	4 years	Computing	3.11999989
A0090755N	2013-10-16	3 years 3 mons	Engineering	3.1500001
A0824199X	2013-02-27	3 years 5 mons	Engineering	3.58999991
A0325935B	2014-02-28	4 years 2 mons	Engineering	3.94000006
A0437094C	2012-03-10	3 years 8 mons	Science	3.25999999
A0147265T	2014-06-07	4 years 6 mons	Computing	4.30000019
A0229759K	2015-08-01	3 years 10 mons	Engineering	3.48000002
A0992386R	2012-02-05	4 years 2 mons	Engineering	3.76999998
A0576392A	2015-11-11	4 years 10 mons	Science	3.22000003
A0575027W	2014-04-11	4 years 8 mons	Arts	4.8499999
A0524888C	2010-02-19	4 years 6 mons	Computing	4.17999983
A0735836I	2014-09-22	4 years 11 mons	Computing	4.38999987
A0744079Y	2015-04-11	4 years 11 mons	Computing	3.48000002
A0214272N	2013-12-17	3 years 3 mons	Arts	4.84000015
A0202101P	2013-03-11	4 years 1 mon	Engineering	3.86999989
A0628414S	2010-07-13	3 years 11 mons	Science	3.3499999
A0906942D	2015-08-25	3 years 5 mons	Arts	3.52999997
A0420580V	2015-05-07	4 years 10 mons	Computing	4.69999981
A0540838A	2012-09-19	4 years 10 mons	Engineering	3.69000006
A0776430X	2011-09-16	4 years 6 mons	Computing	4.53000021
A0369719Y	2010-03-01	4 years 11 mons	Science	4.32000017
A0467427P	2012-04-21	4 years 8 mons	Science	4.13999987
A0631722D	2012-08-03	3 years 5 mons	Arts	4.32000017
A0271280T	2013-09-10	3 years 4 mons	Computing	3.86999989
A0364853E	2015-02-16	3 years 4 mons	Computing	4.63000011
A0262203H	2012-11-11	4 years 5 mons	Computing	4.23999977
A0748990P	2011-04-26	3 years 4 mons	Science	3.41000009
A0052489K	2014-07-19	4 years	Science	4.03999996
A0869129C	2010-04-13	4 years 11 mons	Computing	3.77999997
A0763132Y	2012-12-06	4 years 5 mons	Engineering	3
A0320586F	2015-08-18	3 years 11 mons	Arts	4.0999999
A0122464A	2015-12-23	3 years 10 mons	Science	4.01999998
A0822130N	2011-06-04	4 years 5 mons	Computing	3.97000003
A0279137I	2010-09-24	3 years 2 mons	Science	4.13999987
A0377641V	2012-03-08	3 years 1 mon	Arts	4.01999998
A0775984J	2013-05-25	3 years 2 mons	Science	3.79999995
A0709970L	2013-02-21	4 years 11 mons	Science	3.75
A0001716V	2012-07-22	4 years 8 mons	Computing	4.21000004
A0304665Y	2010-03-21	4 years 11 mons	Engineering	4.46999979
A0956881D	2015-12-06	3 years 5 mons	Science	3.04999995
A0099731T	2011-01-10	3 years 2 mons	Engineering	3.80999994
A0808160L	2012-08-13	3 years 1 mon	Science	3.45000005
A0852889C	2010-01-04	4 years 1 mon	Computing	4.67000008
A0393332H	2014-10-09	3 years 10 mons	Engineering	4.61999989
A0311100Z	2015-11-08	4 years 7 mons	Engineering	3.54999995
A0391231F	2013-04-20	3 years 7 mons	Computing	3.4000001
A0274651C	2011-12-04	4 years 3 mons	Engineering	3.31999993
A0737594Y	2015-05-26	4 years	Engineering	4.17000008
A0525526Q	2011-07-23	4 years 5 mons	Arts	3.3499999
A0647198K	2010-01-14	3 years 10 mons	Arts	3.22000003
A0618118U	2013-04-12	4 years 1 mon	Engineering	3.20000005
A0422487B	2014-11-27	4 years 5 mons	Arts	3.11999989
A0134926X	2012-11-06	4 years 7 mons	Engineering	4.23999977
A0349102P	2015-12-01	4 years 9 mons	Engineering	3.51999998
A0919924E	2013-07-04	4 years	Arts	3.27999997
A0222194M	2012-09-09	4 years 3 mons	Engineering	3.68000007
A0059442W	2010-02-25	3 years 2 mons	Science	3.19000006
A0079401S	2012-10-11	4 years 6 mons	Engineering	3.55999994
A0082679H	2013-01-04	4 years	Science	3.61999989
A0431944M	2012-08-24	3 years 3 mons	Arts	4.96000004
A0060084L	2012-12-05	3 years 9 mons	Arts	3.70000005
A0254554Q	2012-09-14	4 years 9 mons	Computing	3.5
A0615243G	2014-11-12	4 years 11 mons	Computing	3.5999999
A0399974U	2013-02-06	3 years 8 mons	Engineering	3.92000008
A0757598O	2013-02-20	4 years 8 mons	Arts	4.01000023
A0664071K	2014-11-19	4 years 5 mons	Engineering	3.68000007
A0908827U	2014-03-26	4 years 7 mons	Engineering	3.02999997
A0349631J	2015-07-16	4 years 5 mons	Science	4.96000004
A0024813M	2015-11-12	3 years 11 mons	Arts	3.97000003
A0869281G	2012-03-19	3 years 1 mon	Engineering	4.96999979
A0486269M	2015-04-04	3 years 6 mons	Engineering	4.65999985
A0193194D	2010-06-12	4 years	Arts	4.05999994
A0405249E	2010-04-06	3 years 9 mons	Arts	3.33999991
A0017308B	2013-07-06	3 years 8 mons	Computing	4.09000015
A0245943W	2010-04-22	3 years 10 mons	Computing	3.07999992
A0231511I	2012-02-05	3 years 8 mons	Science	3.04999995
A0275702E	2010-01-01	3 years 4 mons	Engineering	3.1099999
A0533014W	2012-01-05	3 years 9 mons	Science	4.28999996
A0580978E	2011-04-03	4 years 7 mons	Science	3.3900001
A0373111Q	2013-09-12	4 years 5 mons	Engineering	3.98000002
A0551805T	2010-12-22	3 years 2 mons	Computing	4.03999996
A0266016J	2012-01-07	4 years	Science	3.8499999
A0052456O	2012-04-07	3 years 4 mons	Science	4.69000006
A0826154V	2013-11-04	4 years 3 mons	Arts	3.28999996
A0254079I	2011-03-10	3 years 10 mons	Science	4.63999987
A0062709W	2015-06-28	3 years 8 mons	Science	3.11999989
A0127581K	2013-02-19	3 years 10 mons	Computing	3.83999991
A0040683W	2011-10-21	4 years 3 mons	Science	4.1500001
A0692555Y	2010-05-24	4 years 11 mons	Computing	4.5
A0783599M	2012-09-09	3 years 6 mons	Arts	3.16000009
A0260093F	2012-07-28	3 years 3 mons	Computing	4.03999996
A0605074D	2015-05-10	3 years 9 mons	Computing	4.07000017
A0219548L	2012-04-04	4 years 4 mons	Engineering	3.79999995
A0760584H	2012-10-05	3 years 9 mons	Engineering	3.94000006
A0459312P	2014-02-23	3 years 1 mon	Computing	4.48999977
A0119960U	2012-07-22	3 years 10 mons	Arts	4.96999979
A0600202K	2012-04-14	4 years 11 mons	Science	4.28999996
A0293087A	2012-03-07	4 years 4 mons	Science	4.32000017
A0737587L	2013-06-07	4 years	Arts	3.31999993
A0119121O	2013-11-07	4 years 5 mons	Engineering	3.81999993
A0462172V	2010-05-05	5 years	Science	3.3599999
A0298603K	2012-12-06	4 years 2 mons	Engineering	3.04999995
A0312873A	2013-02-25	4 years 9 mons	Arts	4.01000023
A0859430U	2012-02-21	5 years	Computing	3.25999999
A0995768O	2010-04-21	4 years 5 mons	Science	3.99000001
A0082359P	2013-05-13	3 years 5 mons	Arts	4.38999987
A0591789O	2014-02-10	3 years 5 mons	Engineering	3.51999998
A0460099X	2010-06-06	3 years 10 mons	Science	4.48000002
A0427870E	2015-03-05	3 years 8 mons	Engineering	3.75999999
A0124368Y	2014-05-13	3 years 8 mons	Computing	3.02999997
A0868415G	2012-10-19	3 years 5 mons	Computing	3.07999992
A0238663G	2014-05-23	4 years 8 mons	Arts	3.1400001
A0179471X	2011-07-28	4 years 9 mons	Engineering	3.04999995
A0459202A	2015-01-05	4 years	Computing	4.36999989
A0372291Z	2010-03-14	3 years 2 mons	Computing	3.30999994
A0540175G	2014-05-20	3 years 1 mon	Arts	3.00999999
A0430922Z	2010-01-26	4 years 4 mons	Engineering	3.79999995
A0735323X	2013-06-02	3 years 3 mons	Computing	3.57999992
A0780462N	2015-03-14	3 years 2 mons	Engineering	3.75999999
A0939438W	2013-02-17	4 years 7 mons	Computing	3.02999997
A0018500W	2013-01-22	4 years 4 mons	Engineering	4.78999996
A0136972Y	2015-08-05	5 years	Computing	3.13000011
A0433532J	2012-02-06	3 years 10 mons	Science	4.88000011
A0646785D	2012-11-09	4 years 1 mon	Science	3.46000004
A0217297T	2011-12-09	3 years 7 mons	Arts	3.44000006
A0693001S	2014-03-24	5 years	Arts	4.73000002
A0455030H	2013-12-25	4 years 7 mons	Engineering	3.86999989
A0019644Y	2010-04-01	3 years 3 mons	Science	4.76999998
A0043326T	2013-03-10	3 years 2 mons	Computing	3.48000002
A0204038M	2010-05-05	3 years 1 mon	Arts	4.96999979
A0219783E	2010-05-17	3 years 6 mons	Engineering	4.07000017
A0548394D	2012-11-05	4 years 2 mons	Science	3.88000011
A0499433B	2015-07-07	3 years 5 mons	Science	3.67000008
A0794772O	2015-03-15	4 years 6 mons	Computing	3.42000008
A0711109K	2015-11-27	4 years	Engineering	3.92000008
A0909684R	2011-03-24	3 years 5 mons	Engineering	4.17000008
A0740631W	2011-05-04	3 years 4 mons	Engineering	3.80999994
A0520771C	2010-12-11	3 years 4 mons	Science	4.38000011
A0003744I	2012-01-26	3 years 8 mons	Computing	3.74000001
A0657065A	2014-01-22	3 years 4 mons	Computing	4.46000004
A0108350X	2011-02-20	4 years 8 mons	Science	3.8900001
A0691220O	2013-03-06	4 years 6 mons	Science	4.03999996
A0138793J	2013-05-12	4 years 10 mons	Science	4.63000011
A0838239Y	2010-11-09	3 years 8 mons	Science	4.96999979
A0685028O	2013-07-11	3 years 2 mons	Science	4.46999979
A0239503S	2010-08-21	5 years	Computing	4.4000001
A0645348D	2010-10-04	5 years	Science	3.08999991
A0912423X	2011-10-19	3 years 7 mons	Computing	4.92999983
A0526531Q	2010-05-07	4 years 4 mons	Computing	4.36000013
A0690118U	2011-04-28	4 years 4 mons	Computing	3.53999996
A0126115Z	2015-04-20	5 years	Arts	4.55999994
A0156845F	2014-12-05	4 years 3 mons	Arts	3.99000001
A0869523H	2012-05-18	4 years 8 mons	Engineering	3.19000006
A0953145G	2012-01-28	3 years 6 mons	Science	3.55999994
A0779341G	2014-11-19	4 years 5 mons	Science	4.03999996
A0000455I	2010-11-12	5 years	Engineering	4.17000008
A0533033F	2011-02-28	3 years 6 mons	Arts	4.32999992
A0578845V	2012-05-25	3 years 6 mons	Science	4.05000019
A0699962M	2011-08-07	4 years 9 mons	Computing	4.61000013
A0058511E	2014-03-02	4 years 2 mons	Arts	4.71000004
A0696494R	2011-01-03	4 years 4 mons	Engineering	4.26000023
A0621961Z	2015-06-10	4 years 5 mons	Arts	4.76000023
A0901260O	2015-07-07	3 years 5 mons	Arts	4.86000013
A0428754K	2014-10-21	4 years 5 mons	Computing	3.8599999
A0237852W	2013-06-18	4 years 10 mons	Arts	4.61999989
A0985489C	2010-10-06	3 years 3 mons	Engineering	3.1400001
A0599013S	2014-07-14	4 years	Engineering	4.36999989
A0686433S	2011-01-22	4 years	Science	3.08999991
A0820238G	2012-04-14	4 years 6 mons	Computing	4.61999989
A0048651Y	2013-03-12	4 years 1 mon	Science	4.21000004
A0522579M	2010-05-27	3 years 8 mons	Science	4.13999987
A0380383T	2010-04-14	4 years 9 mons	Engineering	3.96000004
A0740092E	2015-05-25	4 years 7 mons	Engineering	3.05999994
A0579170A	2013-09-03	4 years 11 mons	Science	4.71999979
A0446066N	2015-01-03	4 years 6 mons	Science	4.01999998
A0445526C	2014-03-28	3 years 11 mons	Arts	3.00999999
A0625645F	2015-05-20	4 years 5 mons	Arts	3.66000009
A0779995G	2010-06-22	4 years 4 mons	Arts	4.8499999
A0876439W	2013-12-17	3 years 1 mon	Computing	3.06999993
A0976204Y	2013-10-20	4 years 3 mons	Engineering	4.84000015
A0566144C	2012-05-12	3 years 1 mon	Science	4.11000013
A0671478C	2012-11-21	4 years 4 mons	Science	3.25999999
A0101894N	2012-02-11	4 years 7 mons	Computing	4.05999994
A0232934R	2013-01-24	3 years 2 mons	Computing	3.41000009
A0534588E	2015-03-11	4 years 10 mons	Arts	4.48000002
A0273479F	2010-10-17	4 years 8 mons	Arts	4.71999979
A0499217N	2012-07-11	3 years 10 mons	Science	4.26000023
A0438393E	2012-08-13	3 years 5 mons	Science	3.24000001
A0405251Z	2015-04-27	5 years	Arts	4.15999985
A0780355S	2010-03-24	4 years 3 mons	Computing	4.30999994
A0376542B	2012-09-01	4 years 10 mons	Computing	4.05999994
A0085844V	2012-12-19	4 years 3 mons	Science	3.45000005
A0233055D	2014-03-24	3 years 3 mons	Computing	3.48000002
A0962386C	2011-08-21	3 years 11 mons	Engineering	4.13999987
A0362951P	2015-08-21	3 years 11 mons	Arts	4
A0900936J	2014-08-15	4 years 6 mons	Computing	3.55999994
A0208871D	2012-11-04	3 years 8 mons	Arts	3.03999996
A0575526J	2015-01-21	4 years 8 mons	Science	3.42000008
A0976626Q	2011-06-19	4 years 2 mons	Arts	3.36999989
A0909974K	2015-05-01	3 years 10 mons	Science	3.36999989
A0130243E	2010-09-19	4 years 11 mons	Science	4.11000013
A0931650M	2013-10-24	3 years 5 mons	Science	3.69000006
A0270494G	2011-03-10	4 years 11 mons	Computing	3.36999989
A0570842J	2013-09-01	3 years 8 mons	Engineering	3.70000005
A0124613K	2015-08-23	4 years 2 mons	Engineering	4.28000021
A0098803L	2010-01-06	3 years 11 mons	Science	3.1400001
A0982442B	2012-08-07	3 years 9 mons	Science	4.92000008
A0543878L	2013-06-14	4 years 5 mons	Engineering	3.78999996
A0825446Q	2010-07-23	3 years 1 mon	Computing	3.26999998
A0874903Q	2013-02-27	3 years 6 mons	Engineering	4.82999992
A0146785E	2010-12-22	4 years 9 mons	Engineering	3.47000003
A0928312B	2015-02-20	4 years 8 mons	Computing	4.46999979
A0532276D	2013-03-21	3 years 7 mons	Computing	4.94999981
A0418552F	2014-09-08	3 years 3 mons	Science	4.94999981
A0452957Q	2012-03-19	4 years 11 mons	Engineering	4.48999977
A0285338V	2012-09-22	4 years 2 mons	Computing	4.88000011
A0288029K	2013-06-18	4 years 7 mons	Arts	4
A0949141P	2014-12-10	3 years 8 mons	Computing	4.23999977
A0427314U	2011-07-14	3 years 9 mons	Computing	4.57000017
A0189787Z	2015-10-23	3 years 7 mons	Engineering	4.28000021
A0632899G	2010-07-14	4 years 6 mons	Science	4.71999979
A0862190I	2010-11-28	4 years 9 mons	Computing	4.78999996
A0107996S	2014-05-03	3 years 1 mon	Arts	4.03999996
A0364494C	2013-10-01	4 years 2 mons	Science	4.67999983
A0422194J	2013-06-05	4 years 6 mons	Arts	3.53999996
A0150721V	2014-03-03	3 years 10 mons	Engineering	3.94000006
A0338663U	2015-02-22	4 years 5 mons	Engineering	4.30000019
A0491865U	2014-04-21	4 years 7 mons	Science	3.97000003
A0494971T	2012-03-19	4 years 1 mon	Computing	3.19000006
A0750642G	2014-02-10	4 years 7 mons	Computing	3.96000004
A0489253K	2011-09-21	4 years 10 mons	Computing	4.05000019
A0123111O	2012-12-25	4 years 2 mons	Science	3.3900001
A0075376Y	2010-06-06	4 years 9 mons	Arts	3.50999999
A0331483B	2015-12-16	5 years	Computing	4.40999985
A0187567U	2011-04-16	3 years 2 mons	Computing	3.68000007
A0583446G	2011-03-23	4 years	Engineering	4.03000021
A0508589P	2010-06-21	3 years 5 mons	Engineering	4.73000002
A0283378L	2010-09-05	3 years 8 mons	Engineering	4.26999998
A0075798I	2015-10-05	3 years 8 mons	Science	3.1099999
A0740063A	2012-08-24	4 years	Computing	3.01999998
A0120514I	2012-12-20	4 years 9 mons	Engineering	4.57000017
A0776476G	2014-12-08	3 years 11 mons	Computing	3.98000002
A0718478A	2012-10-01	3 years 10 mons	Engineering	4.32999992
A0470923E	2015-03-26	3 years 2 mons	Computing	3.93000007
A0821144X	2014-12-05	4 years 1 mon	Engineering	4.17999983
A0391282L	2015-11-03	3 years 11 mons	Computing	4.98999977
A0830159L	2010-03-05	4 years 7 mons	Science	4.48999977
A0332204I	2013-11-09	3 years 2 mons	Computing	4.3499999
A0941978I	2012-07-15	4 years 11 mons	Engineering	4.05000019
A0482641T	2012-07-04	4 years 3 mons	Computing	3.19000006
A0344163T	2013-04-26	3 years 9 mons	Arts	4.61000013
A0220151B	2010-11-15	3 years 1 mon	Engineering	3.80999994
A0187076Q	2012-01-10	3 years 10 mons	Arts	4.19000006
A0821160T	2011-05-17	4 years 7 mons	Science	3.31999993
A0343766T	2011-10-03	4 years 10 mons	Computing	4.13000011
A0444981S	2015-01-15	3 years 4 mons	Computing	3.05999994
A0166767U	2011-03-19	3 years 2 mons	Arts	3.92000008
A0217094R	2010-08-16	4 years 9 mons	Engineering	4.71999979
A0797702B	2011-04-28	4 years 3 mons	Computing	4.55999994
A0555847C	2011-01-17	3 years 10 mons	Science	4.03000021
A0381825J	2015-12-08	4 years	Computing	3.74000001
A0973196L	2013-10-20	3 years 10 mons	Arts	3.48000002
A0865382M	2010-04-07	3 years 7 mons	Arts	4.32000017
A0759631D	2010-08-18	5 years	Computing	3.30999994
A0609058T	2011-04-21	3 years 11 mons	Computing	3.67000008
A0013336T	2015-03-16	3 years 10 mons	Computing	4.78999996
A0137949K	2013-10-06	4 years	Science	3.08999991
A0895339Y	2010-10-16	4 years 7 mons	Computing	3.17000008
A0846428V	2012-05-26	3 years 2 mons	Science	3.3499999
A0742070J	2013-09-14	4 years	Arts	3.32999992
A0888536Z	2015-01-05	3 years 5 mons	Engineering	3.81999993
A0675446J	2013-03-05	3 years 10 mons	Arts	4.51000023
A0092618O	2013-01-27	4 years 2 mons	Arts	4.09000015
A0367579Q	2013-03-27	4 years 2 mons	Engineering	3.19000006
A0098102O	2015-01-08	3 years 4 mons	Engineering	3.13000011
A0054747D	2010-06-24	5 years	Engineering	4.90999985
A0332879M	2011-02-07	4 years 5 mons	Science	3.11999989
A0293425J	2012-04-16	4 years 10 mons	Computing	3.96000004
A0372489S	2011-03-09	3 years 8 mons	Computing	3.5
A0834487W	2010-12-12	3 years 1 mon	Computing	3.75
A0169559J	2012-10-09	3 years 4 mons	Computing	4.67999983
A0931035U	2012-01-21	4 years 3 mons	Arts	4.78999996
A0304422K	2012-02-28	5 years	Engineering	4.3499999
A0716466F	2011-08-05	4 years 3 mons	Computing	3.6099999
A0644863V	2011-03-04	5 years	Computing	4.17000008
A0547230I	2012-09-27	3 years 2 mons	Engineering	3.95000005
A0737048P	2014-05-23	4 years 3 mons	Engineering	3.30999994
A0120338W	2015-10-12	3 years 2 mons	Arts	3.51999998
A0836412K	2012-01-01	3 years 7 mons	Computing	3.92000008
A0801828N	2013-01-27	4 years 10 mons	Computing	4.65999985
A0811791Y	2013-05-18	3 years 6 mons	Science	3.28999996
A0403630I	2011-12-11	3 years 8 mons	Computing	4.46999979
A0724638M	2013-11-08	4 years 10 mons	Arts	4.82999992
A0673019L	2014-01-11	3 years 11 mons	Engineering	3.91000009
A0743224J	2015-03-14	4 years 4 mons	Arts	3.52999997
A0803586S	2011-10-24	3 years 4 mons	Engineering	4.42999983
A0608544P	2015-09-19	4 years 2 mons	Engineering	4.98999977
A0075560E	2013-01-10	4 years	Computing	4.94000006
A0471517G	2010-04-18	4 years 1 mon	Science	3.8599999
A0780585K	2012-05-23	4 years 6 mons	Engineering	4.67999983
A0814862V	2012-12-18	3 years 9 mons	Engineering	4.25
A0985024N	2015-08-09	4 years 3 mons	Engineering	3.6099999
A0460547K	2011-10-13	3 years 4 mons	Computing	3.86999989
A0339183W	2013-11-09	4 years 5 mons	Computing	4.94999981
A0435780H	2013-07-08	5 years	Science	4.4000001
A0317247O	2013-02-23	4 years 8 mons	Computing	3.82999992
A0069305Y	2011-09-18	4 years 5 mons	Engineering	4.92999983
A0018804Y	2010-03-22	3 years 4 mons	Computing	3.02999997
A0207636W	2012-02-22	3 years 5 mons	Science	4.48000002
A0894139Z	2015-05-22	3 years 3 mons	Engineering	3.21000004
A0547193C	2015-02-14	4 years 1 mon	Computing	4.63000011
A0603444L	2010-12-04	3 years 11 mons	Science	4.80000019
A0903060O	2010-07-24	4 years 10 mons	Engineering	3.01999998
A0976525M	2014-12-11	4 years 11 mons	Arts	3.86999989
A0178459T	2010-09-24	3 years 3 mons	Arts	4.48999977
A0044590X	2012-12-15	3 years 11 mons	Computing	4.44000006
A0485034Y	2011-12-10	4 years 7 mons	Arts	3.61999989
A0663083T	2014-08-26	4 years 6 mons	Arts	4.78999996
A0654832Z	2010-04-18	4 years 9 mons	Science	3.98000002
A0489908W	2015-03-28	3 years 3 mons	Arts	4.38999987
A0675774V	2012-02-10	3 years 3 mons	Science	3.83999991
A0454186H	2015-12-11	3 years 6 mons	Engineering	4.36000013
A0145111B	2010-04-26	3 years 9 mons	Arts	4.92000008
A0313462B	2015-11-09	4 years 3 mons	Computing	4.17000008
A0043543C	2015-03-07	3 years 6 mons	Computing	3.30999994
A0452925W	2014-04-27	4 years 10 mons	Science	3.56999993
A0380571D	2010-08-05	3 years 8 mons	Arts	3.82999992
A0540041H	2011-05-05	3 years 8 mons	Engineering	3.07999992
A0585831K	2015-01-20	4 years 9 mons	Science	4.23999977
A0821145K	2011-01-13	4 years	Arts	3.75999999
A0240012J	2015-05-14	3 years 1 mon	Arts	3.51999998
A0219867O	2014-09-07	4 years 4 mons	Science	3.77999997
A0438840L	2011-06-20	3 years 9 mons	Science	3.55999994
A0224754T	2011-05-12	3 years 2 mons	Arts	4.11000013
A0420642P	2013-11-27	3 years 11 mons	Computing	3.86999989
A0266624N	2013-07-09	5 years	Computing	3.1500001
A0825344W	2012-07-04	3 years 2 mons	Computing	3.66000009
A0988380K	2013-02-25	4 years 9 mons	Computing	3.70000005
A0488222P	2013-05-11	3 years 4 mons	Engineering	4.90999985
A0848535O	2014-10-22	3 years 2 mons	Engineering	3.0999999
A0992191F	2010-06-13	3 years 9 mons	Arts	4.55999994
A0612173O	2012-04-01	4 years 7 mons	Computing	4.51999998
A0246777M	2015-07-18	3 years 9 mons	Computing	3.91000009
A0526965A	2015-02-26	4 years 6 mons	Engineering	4.57999992
A0500670L	2014-03-13	4 years 8 mons	Arts	4.88000011
A0260023V	2013-02-20	3 years 6 mons	Computing	4.61000013
A0209389E	2012-01-23	4 years 10 mons	Arts	4.63999987
A0963510V	2014-10-12	4 years 7 mons	Science	3.5
A0455236Q	2015-08-12	3 years 2 mons	Arts	3.94000006
A0864081W	2010-06-26	4 years 4 mons	Engineering	3.73000002
A0746374F	2013-10-17	3 years 1 mon	Engineering	3.6099999
A0918151O	2011-12-18	3 years 1 mon	Computing	4.1500001
A0961489N	2011-11-05	3 years 9 mons	Science	3.07999992
A0890467J	2014-03-11	4 years 7 mons	Engineering	3.8599999
A0320183P	2011-08-04	4 years 3 mons	Engineering	4.78000021
A0415760L	2015-07-26	3 years 5 mons	Science	4.4000001
A0111879U	2012-08-28	4 years 10 mons	Computing	3.53999996
A0441483W	2015-08-12	4 years 2 mons	Engineering	4.34000015
A0222861Z	2010-11-21	3 years 4 mons	Computing	4.96000004
A0524697Y	2012-02-10	4 years 11 mons	Arts	3.5999999
A0324225H	2013-07-12	3 years 8 mons	Arts	3.51999998
A0518920E	2013-05-11	3 years 4 mons	Science	3.48000002
A0135779O	2010-05-21	3 years 1 mon	Engineering	3.8900001
A0035989I	2014-05-01	4 years 8 mons	Arts	4.17999983
A0052520A	2014-06-15	3 years 1 mon	Engineering	3.70000005
A0385672W	2010-04-17	4 years 9 mons	Engineering	3.70000005
A0776949Q	2015-08-07	3 years 8 mons	Computing	3.05999994
A0887879O	2013-09-24	3 years 3 mons	Computing	4.63000011
A0259057W	2015-04-19	3 years 11 mons	Computing	3.79999995
A0957521C	2012-09-21	4 years 4 mons	Science	3.50999999
A0499421K	2010-09-26	4 years 2 mons	Engineering	4.38999987
A0943517B	2011-12-07	4 years 1 mon	Science	4.03999996
A0412398W	2015-09-17	3 years 10 mons	Arts	4.55000019
A0374066X	2010-07-01	4 years	Science	4.1500001
A0284458I	2014-05-22	4 years 1 mon	Science	4.30000019
A0285492Y	2011-12-13	4 years 8 mons	Science	4.23000002
A0906100J	2010-07-11	4 years 3 mons	Computing	3.44000006
A0314802P	2010-05-23	4 years 8 mons	Science	3.74000001
A0316556D	2012-09-13	4 years 2 mons	Computing	4.05999994
A0758308Q	2012-03-23	4 years 5 mons	Arts	4.34000015
A0731808T	2015-01-20	3 years 2 mons	Engineering	4.40999985
A0204359F	2013-06-18	3 years 7 mons	Computing	4.67999983
A0936306J	2010-11-02	3 years 9 mons	Computing	4.8499999
A0639750N	2012-09-26	4 years 2 mons	Science	3.98000002
A0654021C	2010-09-13	3 years 5 mons	Engineering	3.21000004
A0621597B	2013-01-17	4 years	Computing	4.5
A0317041B	2014-11-04	4 years 7 mons	Engineering	3.66000009
A0643833P	2015-10-05	4 years 10 mons	Engineering	4
A0360897Z	2014-07-13	4 years 1 mon	Computing	3.27999997
A0881211L	2010-10-17	4 years 2 mons	Engineering	3.06999993
A0452088A	2010-04-08	4 years 2 mons	Computing	3.1500001
A0284309V	2013-10-18	4 years 5 mons	Engineering	3.99000001
A0868041W	2010-01-28	4 years 8 mons	Computing	4.42999983
A0966641M	2010-01-05	4 years	Science	4.98999977
A0226293M	2010-08-13	3 years 1 mon	Computing	4.76999998
A0915987A	2011-07-27	3 years 1 mon	Engineering	3.01999998
A0085927O	2012-03-02	3 years 6 mons	Science	4.61999989
A0656594G	2015-09-28	3 years 10 mons	Science	4.42999983
A0046917O	2011-09-09	4 years 6 mons	Arts	4.07999992
A0300378V	2014-12-11	3 years 8 mons	Engineering	3.03999996
A0995609G	2015-08-16	4 years	Computing	4.84000015
A0816621Q	2012-06-06	3 years 6 mons	Science	4.15999985
A0580354G	2015-03-02	3 years 2 mons	Engineering	4.71000004
A0732936Y	2015-03-01	3 years 11 mons	Engineering	4.98000002
A0182893A	2015-06-10	3 years 8 mons	Science	3.50999999
\.


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

