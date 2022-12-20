-- Normalization 
-- is the process of removing the data redundancy from the Database by optimizing it
-- Normalization ka khayal hum DB design krte huay waqt hi rkh rhay hotay hain  albatta ager kahein humse yeh cheezain collide krne lgayin tou hum 
-- dubara se yeh techniques apply kr k usse optimize krdete hain.
-- Normalization barmala decomposition hai tables ki into simpler and atomic tables


-- Anomalies
-- Insertion -> jb koi course insert krna chahain lekin uske against koi student na ho abhi (add nhi hoskta)
-- deletion -> jb koi data delete kren tou uske saath saath necessary info delete hojaye (delete tou hoskta lekin data loss hoga)
-- updation -> Jb koi data update krna chaho tou har jageh per jahan wo repeat horha hoga update hoga (hamain tou lagega k kaam hogya lekin DB hmari optimized nhi hogi as wo har jgah per jaker change kr rhi hogi)



-- Ager anomalies aajayen tou unko set krne k tareeqay yeh hain

-- 1 Normal Form - (1NF):
-- ager table main multivalue attributes  na hon tou yeh hoskta hai (atomic na hon attributes)
-- like aik student jo hai wo c aur cpp dono hi course ko registered krde same table main
-- SOLUTION
-- 1) aik hi table banao jisme primary key composite banao course k saath (roll no + course)
-- 2) jitne maximum course hoskte hain utne attributes banado (jitne hongay wo aajayengay baki null hongay) (roll no) alone can be the primary key -> isme bht zyada nulls hongay jo aik acchi practice nhi hai
-- 3) multivalued attribute ka alag table banado (yeh best practice hai 1NF main convert krne ki -> issme koi null nhi hongay)


-- 2 Normal Form - (2NF):

















