pai -name easy_rec_ext
-Dconfig=oss://{OSS_BUCKET_NAME}/{EXP_NAME}/configs/taobao_multi_tower_boundary_test.config
-Dcmd=train
-Dboundary_table=odps://{ODPS_PROJ_NAME}/tables/boundary_info_table_{TIME_STAMP}
-Dtables=odps://{ODPS_PROJ_NAME}/tables/boundary_train_{TIME_STAMP},odps://{ODPS_PROJ_NAME}/tables/boundary_test_{TIME_STAMP}
-Dcluster='{"ps":{"count":1, "cpu":1000}, "worker" : {"count":2, "cpu":1000, "memory":40000}}'
-Darn={ROLEARN}
-Dbuckets=oss://{OSS_BUCKET_NAME}/
-DossHost={OSS_ENDPOINT}
-Deval_method=separate
;
