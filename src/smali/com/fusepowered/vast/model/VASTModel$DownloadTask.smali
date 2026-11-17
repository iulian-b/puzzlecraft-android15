.class Lcom/fusepowered/vast/model/VASTModel$DownloadTask;
.super Landroid/os/AsyncTask;
.source "VASTModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/vast/model/VASTModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mVastPlayer:Lcom/fusepowered/vast/VASTPlayer;

.field final synthetic this$0:Lcom/fusepowered/vast/model/VASTModel;


# direct methods
.method public constructor <init>(Lcom/fusepowered/vast/model/VASTModel;Lcom/fusepowered/vast/VASTPlayer;)V
    .locals 0
    .param p2, "vastPlayer"    # Lcom/fusepowered/vast/VASTPlayer;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/fusepowered/vast/model/VASTModel$DownloadTask;->this$0:Lcom/fusepowered/vast/model/VASTModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 493
    iput-object p2, p0, Lcom/fusepowered/vast/model/VASTModel$DownloadTask;->mVastPlayer:Lcom/fusepowered/vast/VASTPlayer;

    .line 494
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 24
    .param p1, "sUrl"    # [Ljava/lang/String;

    .prologue
    .line 498
    const/4 v14, 0x0

    .line 499
    .local v14, "input":Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 500
    .local v15, "output":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 501
    .local v2, "connection":Ljava/net/HttpURLConnection;
    const/4 v10, 0x0

    .line 503
    .local v10, "file":Ljava/io/File;
    :try_start_0
    new-instance v17, Ljava/net/URL;

    const/16 v20, 0x0

    aget-object v20, p1, v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 504
    .local v17, "url":Ljava/net/URL;
    const/16 v20, 0x0

    aget-object v20, p1, v20

    const/16 v21, 0x0

    aget-object v21, p1, v21

    const/16 v22, 0x2f

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    const/16 v22, 0x0

    aget-object v22, p1, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 505
    .local v13, "filename":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 507
    const/16 v20, 0x1388

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 508
    const/16 v20, 0x1388

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 509
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 510
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v12

    .line 514
    .local v12, "fileSize":I
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v20

    const/16 v21, 0xc8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 515
    invoke-static {}, Lcom/fusepowered/vast/model/VASTModel;->access$100()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Server returned HTTP "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const/16 v20, 0x191

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    .line 575
    if-eqz v15, :cond_0

    .line 576
    :try_start_1
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V

    .line 577
    :cond_0
    if-eqz v14, :cond_1

    .line 578
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e

    .line 582
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 583
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 586
    .end local v12    # "fileSize":I
    .end local v13    # "filename":Ljava/lang/String;
    .end local v17    # "url":Ljava/net/URL;
    :cond_2
    :goto_1
    return-object v20

    .line 525
    .restart local v12    # "fileSize":I
    .restart local v13    # "filename":Ljava/lang/String;
    .restart local v17    # "url":Ljava/net/URL;
    :cond_3
    :try_start_2
    new-instance v11, Ljava/io/File;

    sget-object v20, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 528
    .end local v10    # "file":Ljava/io/File;
    .local v11, "file":Ljava/io/File;
    :try_start_3
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v20

    int-to-long v0, v12

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-nez v20, :cond_7

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/vast/model/VASTModel$DownloadTask;->this$0:Lcom/fusepowered/vast/model/VASTModel;

    move-object/from16 v20, v0

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/fusepowered/vast/model/VASTModel;->access$002(Lcom/fusepowered/vast/model/VASTModel;Ljava/lang/String;)Ljava/lang/String;

    .line 530
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v20

    .line 575
    if-eqz v15, :cond_4

    .line 576
    :try_start_4
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V

    .line 577
    :cond_4
    if-eqz v14, :cond_5

    .line 578
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d

    .line 582
    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    .line 583
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    move-object v10, v11

    .end local v11    # "file":Ljava/io/File;
    .restart local v10    # "file":Ljava/io/File;
    goto :goto_1

    .line 534
    .end local v10    # "file":Ljava/io/File;
    .restart local v11    # "file":Ljava/io/File;
    :cond_7
    int-to-long v0, v12

    move-wide/from16 v20, v0

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/vast/model/VASTModel$DownloadTask;->mVastPlayer:Lcom/fusepowered/vast/VASTPlayer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/fusepowered/vast/VASTPlayer;->getMaxFileSize()J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-lez v20, :cond_b

    .line 535
    const/16 v20, 0x190

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v20

    .line 575
    if-eqz v15, :cond_8

    .line 576
    :try_start_6
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V

    .line 577
    :cond_8
    if-eqz v14, :cond_9

    .line 578
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c

    .line 582
    :cond_9
    :goto_3
    if-eqz v2, :cond_a

    .line 583
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    move-object v10, v11

    .end local v11    # "file":Ljava/io/File;
    .restart local v10    # "file":Ljava/io/File;
    goto :goto_1

    .line 539
    .end local v10    # "file":Ljava/io/File;
    .restart local v11    # "file":Ljava/io/File;
    :cond_b
    :try_start_7
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    .line 540
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 542
    .end local v15    # "output":Ljava/io/OutputStream;
    .local v16, "output":Ljava/io/OutputStream;
    const/16 v20, 0x1000

    :try_start_8
    move/from16 v0, v20

    new-array v4, v0, [B

    .line 545
    .local v4, "data":[B
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    .line 546
    .local v18, "startTime":J
    :goto_4
    invoke-virtual {v14, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "count":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_13

    .line 547
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 548
    .local v8, "endTime":J
    sub-long v20, v8, v18

    const-wide/32 v22, 0xf4240

    div-long v6, v20, v22

    .line 550
    .local v6, "duration":J
    const-wide/16 v20, 0x7530

    cmp-long v20, v6, v20

    if-ltz v20, :cond_c

    .line 551
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/fusepowered/vast/model/VASTModel$DownloadTask;->cancel(Z)Z

    .line 554
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/fusepowered/vast/model/VASTModel$DownloadTask;->isCancelled()Z

    move-result v20

    if-eqz v20, :cond_10

    .line 555
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 557
    const/16 v20, 0x192

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v20

    .line 575
    if-eqz v16, :cond_d

    .line 576
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    .line 577
    :cond_d
    if-eqz v14, :cond_e

    .line 578
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    .line 582
    :cond_e
    :goto_5
    if-eqz v2, :cond_f

    .line 583
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f
    move-object v10, v11

    .end local v11    # "file":Ljava/io/File;
    .restart local v10    # "file":Ljava/io/File;
    move-object/from16 v15, v16

    .end local v16    # "output":Ljava/io/OutputStream;
    .restart local v15    # "output":Ljava/io/OutputStream;
    goto/16 :goto_1

    .line 560
    .end local v10    # "file":Ljava/io/File;
    .end local v15    # "output":Ljava/io/OutputStream;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v16    # "output":Ljava/io/OutputStream;
    :cond_10
    const/16 v20, 0x0

    :try_start_a
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v4, v1, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_4

    .line 568
    .end local v3    # "count":I
    .end local v4    # "data":[B
    .end local v6    # "duration":J
    .end local v8    # "endTime":J
    .end local v18    # "startTime":J
    :catch_0
    move-exception v5

    move-object v10, v11

    .end local v11    # "file":Ljava/io/File;
    .restart local v10    # "file":Ljava/io/File;
    move-object/from16 v15, v16

    .line 569
    .end local v12    # "fileSize":I
    .end local v13    # "filename":Ljava/lang/String;
    .end local v16    # "output":Ljava/io/OutputStream;
    .end local v17    # "url":Ljava/net/URL;
    .local v5, "e":Ljava/net/SocketTimeoutException;
    .restart local v15    # "output":Ljava/io/OutputStream;
    :goto_6
    const/16 v20, 0x192

    :try_start_b
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v20

    .line 575
    if-eqz v15, :cond_11

    .line 576
    :try_start_c
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V

    .line 577
    :cond_11
    if-eqz v14, :cond_12

    .line 578
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 582
    :cond_12
    :goto_7
    if-eqz v2, :cond_2

    .line 583
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 565
    .end local v5    # "e":Ljava/net/SocketTimeoutException;
    .end local v10    # "file":Ljava/io/File;
    .end local v15    # "output":Ljava/io/OutputStream;
    .restart local v3    # "count":I
    .restart local v4    # "data":[B
    .restart local v11    # "file":Ljava/io/File;
    .restart local v12    # "fileSize":I
    .restart local v13    # "filename":Ljava/lang/String;
    .restart local v16    # "output":Ljava/io/OutputStream;
    .restart local v17    # "url":Ljava/net/URL;
    .restart local v18    # "startTime":J
    :cond_13
    :try_start_d
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_14

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v20

    int-to-long v0, v12

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_18

    .line 566
    :cond_14
    const/16 v20, 0x190

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_d
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-result-object v20

    .line 575
    if-eqz v16, :cond_15

    .line 576
    :try_start_e
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    .line 577
    :cond_15
    if-eqz v14, :cond_16

    .line 578
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 582
    :cond_16
    :goto_8
    if-eqz v2, :cond_17

    .line 583
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_17
    move-object v10, v11

    .end local v11    # "file":Ljava/io/File;
    .restart local v10    # "file":Ljava/io/File;
    move-object/from16 v15, v16

    .end local v16    # "output":Ljava/io/OutputStream;
    .restart local v15    # "output":Ljava/io/OutputStream;
    goto/16 :goto_1

    .line 575
    .end local v10    # "file":Ljava/io/File;
    .end local v15    # "output":Ljava/io/OutputStream;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v16    # "output":Ljava/io/OutputStream;
    :cond_18
    if-eqz v16, :cond_19

    .line 576
    :try_start_f
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    .line 577
    :cond_19
    if-eqz v14, :cond_1a

    .line 578
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 582
    :cond_1a
    :goto_9
    if-eqz v2, :cond_1b

    .line 583
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 585
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/vast/model/VASTModel$DownloadTask;->this$0:Lcom/fusepowered/vast/model/VASTModel;

    move-object/from16 v20, v0

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/fusepowered/vast/model/VASTModel;->access$002(Lcom/fusepowered/vast/model/VASTModel;Ljava/lang/String;)Ljava/lang/String;

    .line 586
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v10, v11

    .end local v11    # "file":Ljava/io/File;
    .restart local v10    # "file":Ljava/io/File;
    move-object/from16 v15, v16

    .end local v16    # "output":Ljava/io/OutputStream;
    .restart local v15    # "output":Ljava/io/OutputStream;
    goto/16 :goto_1

    .line 570
    .end local v3    # "count":I
    .end local v4    # "data":[B
    .end local v12    # "fileSize":I
    .end local v13    # "filename":Ljava/lang/String;
    .end local v17    # "url":Ljava/net/URL;
    .end local v18    # "startTime":J
    :catch_1
    move-exception v5

    .line 572
    .local v5, "e":Ljava/lang/Exception;
    :goto_a
    const/16 v20, 0x190

    :try_start_10
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result-object v20

    .line 575
    if-eqz v15, :cond_1c

    .line 576
    :try_start_11
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V

    .line 577
    :cond_1c
    if-eqz v14, :cond_1d

    .line 578
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3

    .line 582
    :cond_1d
    :goto_b
    if-eqz v2, :cond_2

    .line 583
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 574
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v20

    .line 575
    :goto_c
    if-eqz v15, :cond_1e

    .line 576
    :try_start_12
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V

    .line 577
    :cond_1e
    if-eqz v14, :cond_1f

    .line 578
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2

    .line 582
    :cond_1f
    :goto_d
    if-eqz v2, :cond_20

    .line 583
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_20
    throw v20

    .line 579
    :catch_2
    move-exception v21

    goto :goto_d

    .line 574
    .end local v10    # "file":Ljava/io/File;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v12    # "fileSize":I
    .restart local v13    # "filename":Ljava/lang/String;
    .restart local v17    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v20

    move-object v10, v11

    .end local v11    # "file":Ljava/io/File;
    .restart local v10    # "file":Ljava/io/File;
    goto :goto_c

    .end local v10    # "file":Ljava/io/File;
    .end local v15    # "output":Ljava/io/OutputStream;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v16    # "output":Ljava/io/OutputStream;
    :catchall_2
    move-exception v20

    move-object v10, v11

    .end local v11    # "file":Ljava/io/File;
    .restart local v10    # "file":Ljava/io/File;
    move-object/from16 v15, v16

    .end local v16    # "output":Ljava/io/OutputStream;
    .restart local v15    # "output":Ljava/io/OutputStream;
    goto :goto_c

    .line 579
    .end local v12    # "fileSize":I
    .end local v13    # "filename":Ljava/lang/String;
    .end local v17    # "url":Ljava/net/URL;
    .restart local v5    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v21

    goto :goto_b

    .line 570
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v10    # "file":Ljava/io/File;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v12    # "fileSize":I
    .restart local v13    # "filename":Ljava/lang/String;
    .restart local v17    # "url":Ljava/net/URL;
    :catch_4
    move-exception v5

    move-object v10, v11

    .end local v11    # "file":Ljava/io/File;
    .restart local v10    # "file":Ljava/io/File;
    goto :goto_a

    .end local v10    # "file":Ljava/io/File;
    .end local v15    # "output":Ljava/io/OutputStream;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v16    # "output":Ljava/io/OutputStream;
    :catch_5
    move-exception v5

    move-object v10, v11

    .end local v11    # "file":Ljava/io/File;
    .restart local v10    # "file":Ljava/io/File;
    move-object/from16 v15, v16

    .end local v16    # "output":Ljava/io/OutputStream;
    .restart local v15    # "output":Ljava/io/OutputStream;
    goto :goto_a

    .line 579
    .end local v12    # "fileSize":I
    .end local v13    # "filename":Ljava/lang/String;
    .end local v17    # "url":Ljava/net/URL;
    .local v5, "e":Ljava/net/SocketTimeoutException;
    :catch_6
    move-exception v21

    goto/16 :goto_7

    .line 568
    .end local v5    # "e":Ljava/net/SocketTimeoutException;
    :catch_7
    move-exception v5

    goto/16 :goto_6

    .end local v10    # "file":Ljava/io/File;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v12    # "fileSize":I
    .restart local v13    # "filename":Ljava/lang/String;
    .restart local v17    # "url":Ljava/net/URL;
    :catch_8
    move-exception v5

    move-object v10, v11

    .end local v11    # "file":Ljava/io/File;
    .restart local v10    # "file":Ljava/io/File;
    goto/16 :goto_6

    .line 579
    .end local v10    # "file":Ljava/io/File;
    .end local v15    # "output":Ljava/io/OutputStream;
    .restart local v3    # "count":I
    .restart local v4    # "data":[B
    .restart local v11    # "file":Ljava/io/File;
    .restart local v16    # "output":Ljava/io/OutputStream;
    .restart local v18    # "startTime":J
    :catch_9
    move-exception v20

    goto :goto_9

    :catch_a
    move-exception v21

    goto :goto_8

    .restart local v6    # "duration":J
    .restart local v8    # "endTime":J
    :catch_b
    move-exception v21

    goto/16 :goto_5

    .end local v3    # "count":I
    .end local v4    # "data":[B
    .end local v6    # "duration":J
    .end local v8    # "endTime":J
    .end local v16    # "output":Ljava/io/OutputStream;
    .end local v18    # "startTime":J
    .restart local v15    # "output":Ljava/io/OutputStream;
    :catch_c
    move-exception v21

    goto/16 :goto_3

    :catch_d
    move-exception v21

    goto/16 :goto_2

    .end local v11    # "file":Ljava/io/File;
    .restart local v10    # "file":Ljava/io/File;
    :catch_e
    move-exception v21

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 488
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fusepowered/vast/model/VASTModel$DownloadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/fusepowered/vast/model/VASTModel$DownloadTask;->mVastPlayer:Lcom/fusepowered/vast/VASTPlayer;

    iget-object v0, v0, Lcom/fusepowered/vast/VASTPlayer;->listener:Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;

    const/16 v1, 0x192

    invoke-interface {v0, v1}, Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;->vastError(I)V

    .line 604
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Integer;

    .prologue
    .line 591
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/fusepowered/vast/model/VASTModel$DownloadTask;->mVastPlayer:Lcom/fusepowered/vast/VASTPlayer;

    iget-object v0, v0, Lcom/fusepowered/vast/VASTPlayer;->listener:Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;->vastError(I)V

    .line 597
    :goto_0
    return-void

    .line 594
    :cond_0
    invoke-static {}, Lcom/fusepowered/vast/model/VASTModel;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on execute complete"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/fusepowered/vast/model/VASTModel$DownloadTask;->mVastPlayer:Lcom/fusepowered/vast/VASTPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fusepowered/vast/VASTPlayer;->setLoaded(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 488
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fusepowered/vast/model/VASTModel$DownloadTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
