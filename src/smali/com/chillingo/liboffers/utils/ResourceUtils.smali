.class public Lcom/chillingo/liboffers/utils/ResourceUtils;
.super Ljava/lang/Object;
.source "ResourceUtils.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EBean;
.end annotation


# instance fields
.field context:Landroid/content/Context;
    .annotation build Lcom/googlecode/androidannotations/annotations/RootContext;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readRawResourceAsString(I)Ljava/lang/String;
    .locals 10
    .param p1, "resourceId"    # I

    .prologue
    const/4 v6, 0x0

    .line 21
    iget-object v7, p0, Lcom/chillingo/liboffers/utils/ResourceUtils;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 22
    .local v4, "is":Ljava/io/InputStream;
    if-nez v4, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-object v6

    .line 25
    :cond_1
    const/4 v1, 0x0

    .line 26
    .local v1, "buf":Ljava/io/BufferedInputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 28
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .end local v1    # "buf":Ljava/io/BufferedInputStream;
    .local v2, "buf":Ljava/io/BufferedInputStream;
    const/4 v3, -0x1

    .line 30
    .local v3, "i":I
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_2

    .line 31
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 34
    :catch_0
    move-exception v5

    move-object v1, v2

    .line 35
    .end local v2    # "buf":Ljava/io/BufferedInputStream;
    .end local v3    # "i":I
    .restart local v1    # "buf":Ljava/io/BufferedInputStream;
    .local v5, "t":Ljava/lang/Throwable;
    :goto_2
    :try_start_2
    const-string v7, "Offers"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to read raw resource "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    if-eqz v1, :cond_0

    .line 38
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v7

    goto :goto_0

    .line 33
    .end local v1    # "buf":Ljava/io/BufferedInputStream;
    .end local v5    # "t":Ljava/lang/Throwable;
    .restart local v2    # "buf":Ljava/io/BufferedInputStream;
    .restart local v3    # "i":I
    :cond_2
    :try_start_4
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 37
    if-eqz v2, :cond_3

    .line 38
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_3
    move-object v6, v7

    goto :goto_0

    .line 37
    .end local v2    # "buf":Ljava/io/BufferedInputStream;
    .end local v3    # "i":I
    .restart local v1    # "buf":Ljava/io/BufferedInputStream;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v1, :cond_4

    .line 38
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    :goto_5
    throw v6

    .end local v1    # "buf":Ljava/io/BufferedInputStream;
    .restart local v2    # "buf":Ljava/io/BufferedInputStream;
    .restart local v3    # "i":I
    :catch_2
    move-exception v6

    goto :goto_3

    .end local v2    # "buf":Ljava/io/BufferedInputStream;
    .end local v3    # "i":I
    .restart local v1    # "buf":Ljava/io/BufferedInputStream;
    :catch_3
    move-exception v7

    goto :goto_5

    .line 37
    .end local v1    # "buf":Ljava/io/BufferedInputStream;
    .restart local v2    # "buf":Ljava/io/BufferedInputStream;
    .restart local v3    # "i":I
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "buf":Ljava/io/BufferedInputStream;
    .restart local v1    # "buf":Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 34
    .end local v3    # "i":I
    :catch_4
    move-exception v5

    goto :goto_2
.end method
