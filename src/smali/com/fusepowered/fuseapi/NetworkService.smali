.class public Lcom/fusepowered/fuseapi/NetworkService;
.super Ljava/lang/Object;
.source "NetworkService.java"


# static fields
.field private static final CONNECTION_TIMEOUT_IN_MS:I = 0xea60

.field private static final READ_TIMEOUT_IN_MS:I = 0x1d4c0

.field private static final TAG:Ljava/lang/String; = "NetworkService"


# instance fields
.field imgFromCall:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAdProviderString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 285
    invoke-static {}, Lcom/fusepowered/ads/AdManager;->getAvailableAdProviders()Ljava/util/ArrayList;

    move-result-object v0

    .line 286
    .local v0, "availableAdProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 287
    const/4 v1, 0x0

    .line 289
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ","

    invoke-static {v0, v1}, Lcom/fusepowered/util/StringUtil;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getB64Auth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "login"    # Ljava/lang/String;
    .param p2, "pass"    # Ljava/lang/String;

    .prologue
    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "source":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Basic "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 279
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getPlatformString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->getPlatformString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isWifiConnection(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 502
    :try_start_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 503
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 504
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    const-string v3, ""

    .line 505
    .local v3, "retValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 506
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    .line 507
    const-string v4, "WIFI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 508
    const-string v4, "1"

    .line 514
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    .end local v3    # "retValue":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 512
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    .restart local v2    # "netInfo":Landroid/net/NetworkInfo;
    .restart local v3    # "retValue":Ljava/lang/String;
    :cond_0
    const-string v4, "0"
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 513
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    .end local v3    # "retValue":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 514
    .local v1, "ex":Ljava/lang/SecurityException;
    const-string v4, "-1"

    goto :goto_0
.end method

.method private openHttpConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 141
    invoke-direct {p0, p1}, Lcom/fusepowered/fuseapi/NetworkService;->openHttpConnection_HoneyCombMR2(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 147
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/fusepowered/fuseapi/NetworkService;->openHttpConnection_AllOthers(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    goto :goto_0
.end method

.method private openHttpConnection_AllOthers(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 17
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 153
    const/16 v11, 0x3f

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 154
    .local v5, "marker":I
    const/4 v11, -0x1

    if-le v5, v11, :cond_2

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "host":Ljava/lang/String;
    :goto_0
    const/4 v11, -0x1

    if-le v5, v11, :cond_3

    add-int/lit8 v11, v5, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 157
    .local v8, "queryStr":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x0

    .line 158
    .local v4, "httpConn":Ljava/net/HttpURLConnection;
    const/4 v6, 0x0

    .line 159
    .local v6, "osw":Ljava/io/OutputStreamWriter;
    const/4 v9, -0x1

    .line 163
    .local v9, "responseCode":I
    :try_start_0
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 164
    .local v10, "url":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 165
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 166
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 167
    const-string v11, "POST"

    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 168
    const v11, 0xea60

    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 169
    const v11, 0x1d4c0

    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 170
    const-string v11, "Content-Length"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    array-length v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v11, "Content-Language"

    const-string v12, "en-US"

    invoke-virtual {v4, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v11, "User-Agent"

    sget-object v12, Lcom/fusepowered/fuseapi/FuseAPI;->userAgent:Ljava/lang/String;

    invoke-virtual {v4, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v11, "Accept-Encoding"

    const-string v12, "gzip"

    invoke-virtual {v4, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v11, "jimmyjimmyjango"

    const-string v12, "1Qdow7mFZMh7"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/fusepowered/fuseapi/NetworkService;->getB64Auth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "encodedAuthorization":Ljava/lang/String;
    const-string v11, "Authorization"

    invoke-virtual {v4, v11, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 177
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 180
    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .end local v6    # "osw":Ljava/io/OutputStreamWriter;
    .local v7, "osw":Ljava/io/OutputStreamWriter;
    :try_start_1
    invoke-virtual {v7, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->flush()V

    .line 185
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    .line 195
    if-eqz v7, :cond_0

    .line 197
    :try_start_2
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 203
    :cond_0
    :goto_2
    if-eqz v4, :cond_7

    const/16 v11, 0xc8

    if-eq v9, v11, :cond_7

    .line 204
    const-string v11, "FuseAPI"

    const-string v12, "Unexpected response code %d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 206
    const/4 v4, 0x0

    move-object v6, v7

    .line 209
    .end local v2    # "encodedAuthorization":Ljava/lang/String;
    .end local v7    # "osw":Ljava/io/OutputStreamWriter;
    .end local v10    # "url":Ljava/net/URL;
    .restart local v6    # "osw":Ljava/io/OutputStreamWriter;
    :cond_1
    :goto_3
    return-object v4

    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "httpConn":Ljava/net/HttpURLConnection;
    .end local v6    # "osw":Ljava/io/OutputStreamWriter;
    .end local v8    # "queryStr":Ljava/lang/String;
    .end local v9    # "responseCode":I
    :cond_2
    move-object/from16 v3, p1

    .line 154
    goto/16 :goto_0

    .line 155
    .restart local v3    # "host":Ljava/lang/String;
    :cond_3
    const-string v8, ""

    goto/16 :goto_1

    .line 190
    .restart local v4    # "httpConn":Ljava/net/HttpURLConnection;
    .restart local v6    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v8    # "queryStr":Ljava/lang/String;
    .restart local v9    # "responseCode":I
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_3
    const-string v11, "FuseAPI"

    const-string v12, "Unexpected network problem"

    invoke-static {v11, v12, v1}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 195
    if-eqz v6, :cond_4

    .line 197
    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 203
    :cond_4
    :goto_5
    if-eqz v4, :cond_1

    const/16 v11, 0xc8

    if-eq v9, v11, :cond_1

    .line 204
    const-string v11, "FuseAPI"

    const-string v12, "Unexpected response code %d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 206
    const/4 v4, 0x0

    goto :goto_3

    .line 195
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    :goto_6
    if-eqz v6, :cond_5

    .line 197
    :try_start_5
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 203
    :cond_5
    :goto_7
    if-eqz v4, :cond_6

    const/16 v12, 0xc8

    if-eq v9, v12, :cond_6

    .line 204
    const-string v12, "FuseAPI"

    const-string v13, "Unexpected response code %d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 206
    const/4 v4, 0x0

    :cond_6
    throw v11

    .line 199
    .end local v6    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "encodedAuthorization":Ljava/lang/String;
    .restart local v7    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v10    # "url":Ljava/net/URL;
    :catch_1
    move-exception v11

    goto :goto_2

    .end local v2    # "encodedAuthorization":Ljava/lang/String;
    .end local v7    # "osw":Ljava/io/OutputStreamWriter;
    .end local v10    # "url":Ljava/net/URL;
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v6    # "osw":Ljava/io/OutputStreamWriter;
    :catch_2
    move-exception v11

    goto :goto_5

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v12

    goto :goto_7

    .line 195
    .end local v6    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "encodedAuthorization":Ljava/lang/String;
    .restart local v7    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v10    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v11

    move-object v6, v7

    .end local v7    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v6    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_6

    .line 190
    .end local v6    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v7    # "osw":Ljava/io/OutputStreamWriter;
    :catch_4
    move-exception v1

    move-object v6, v7

    .end local v7    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v6    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_4

    .end local v6    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v7    # "osw":Ljava/io/OutputStreamWriter;
    :cond_7
    move-object v6, v7

    .end local v7    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v6    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_3
.end method

.method private openHttpConnection_HoneyCombMR2(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 18
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 214
    const/16 v12, 0x3f

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 215
    .local v5, "marker":I
    const/4 v12, -0x1

    if-le v5, v12, :cond_2

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "host":Ljava/lang/String;
    :goto_0
    const/4 v12, -0x1

    if-le v5, v12, :cond_3

    add-int/lit8 v12, v5, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 218
    .local v9, "queryStr":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x0

    .line 219
    .local v4, "httpConn":Ljava/net/HttpURLConnection;
    const/4 v6, 0x0

    .line 220
    .local v6, "out":Ljava/io/BufferedOutputStream;
    const/4 v10, -0x1

    .line 224
    .local v10, "responseCode":I
    :try_start_0
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 225
    .local v11, "url":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 227
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 228
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 229
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 230
    const-string v12, "POST"

    invoke-virtual {v4, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 231
    const/16 v12, 0x2710

    invoke-virtual {v4, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 232
    const/16 v12, 0x2710

    invoke-virtual {v4, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 233
    const-string v12, "jimmyjimmyjango"

    const-string v13, "1Qdow7mFZMh7"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/fusepowered/fuseapi/NetworkService;->getB64Auth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "encodedAuthorization":Ljava/lang/String;
    const-string v12, "Authorization"

    invoke-virtual {v4, v12, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v12, "Content-Language"

    const-string v13, "en-US"

    invoke-virtual {v4, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v12, "Content-Type"

    const-string v13, "application/x-www-form-urlencoded"

    invoke-virtual {v4, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v12, "User-Agent"

    sget-object v13, Lcom/fusepowered/fuseapi/FuseAPI;->userAgent:Ljava/lang/String;

    invoke-virtual {v4, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v12, "Accept-Encoding"

    const-string v13, "gzip"

    invoke-virtual {v4, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 241
    .local v8, "queryBytes":[B
    array-length v12, v8

    invoke-virtual {v4, v12}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 244
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .local v7, "out":Ljava/io/BufferedOutputStream;
    :try_start_1
    invoke-virtual {v7, v8}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 246
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 249
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v10

    .line 259
    if-eqz v7, :cond_0

    .line 261
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 267
    :cond_0
    :goto_2
    if-eqz v4, :cond_7

    const/16 v12, 0xc8

    if-eq v10, v12, :cond_7

    .line 268
    const-string v12, "FuseAPI"

    const-string v13, "Unexpected response code %d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 270
    const/4 v4, 0x0

    move-object v6, v7

    .line 273
    .end local v2    # "encodedAuthorization":Ljava/lang/String;
    .end local v7    # "out":Ljava/io/BufferedOutputStream;
    .end local v8    # "queryBytes":[B
    .end local v11    # "url":Ljava/net/URL;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    :cond_1
    :goto_3
    return-object v4

    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "httpConn":Ljava/net/HttpURLConnection;
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .end local v9    # "queryStr":Ljava/lang/String;
    .end local v10    # "responseCode":I
    :cond_2
    move-object/from16 v3, p1

    .line 215
    goto/16 :goto_0

    .line 216
    .restart local v3    # "host":Ljava/lang/String;
    :cond_3
    const-string v9, ""

    goto/16 :goto_1

    .line 254
    .restart local v4    # "httpConn":Ljava/net/HttpURLConnection;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v9    # "queryStr":Ljava/lang/String;
    .restart local v10    # "responseCode":I
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_3
    const-string v12, "FuseAPI"

    const-string v13, "Unexpected network problem"

    invoke-static {v12, v13, v1}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    if-eqz v6, :cond_4

    .line 261
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 267
    :cond_4
    :goto_5
    if-eqz v4, :cond_1

    const/16 v12, 0xc8

    if-eq v10, v12, :cond_1

    .line 268
    const-string v12, "FuseAPI"

    const-string v13, "Unexpected response code %d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 270
    const/4 v4, 0x0

    goto :goto_3

    .line 259
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    :goto_6
    if-eqz v6, :cond_5

    .line 261
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 267
    :cond_5
    :goto_7
    if-eqz v4, :cond_6

    const/16 v13, 0xc8

    if-eq v10, v13, :cond_6

    .line 268
    const-string v13, "FuseAPI"

    const-string v14, "Unexpected response code %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 270
    const/4 v4, 0x0

    :cond_6
    throw v12

    .line 263
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "encodedAuthorization":Ljava/lang/String;
    .restart local v7    # "out":Ljava/io/BufferedOutputStream;
    .restart local v8    # "queryBytes":[B
    .restart local v11    # "url":Ljava/net/URL;
    :catch_1
    move-exception v12

    goto :goto_2

    .end local v2    # "encodedAuthorization":Ljava/lang/String;
    .end local v7    # "out":Ljava/io/BufferedOutputStream;
    .end local v8    # "queryBytes":[B
    .end local v11    # "url":Ljava/net/URL;
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v12

    goto :goto_5

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v13

    goto :goto_7

    .line 259
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "encodedAuthorization":Ljava/lang/String;
    .restart local v7    # "out":Ljava/io/BufferedOutputStream;
    .restart local v8    # "queryBytes":[B
    .restart local v11    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v12

    move-object v6, v7

    .end local v7    # "out":Ljava/io/BufferedOutputStream;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_6

    .line 254
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v7    # "out":Ljava/io/BufferedOutputStream;
    :catch_4
    move-exception v1

    move-object v6, v7

    .end local v7    # "out":Ljava/io/BufferedOutputStream;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_4

    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v7    # "out":Ljava/io/BufferedOutputStream;
    :cond_7
    move-object v6, v7

    .end local v7    # "out":Ljava/io/BufferedOutputStream;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_3
.end method


# virtual methods
.method public createImageButton(Ljava/lang/String;Landroid/widget/ImageButton;)V
    .locals 3
    .param p1, "URL"    # Ljava/lang/String;
    .param p2, "imgB"    # Landroid/widget/ImageButton;

    .prologue
    .line 443
    new-instance v0, Lcom/fusepowered/fuseapi/NetworkService$1;

    invoke-direct {v0, p0, p2}, Lcom/fusepowered/fuseapi/NetworkService$1;-><init>(Lcom/fusepowered/fuseapi/NetworkService;Landroid/widget/ImageButton;)V

    .line 495
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/String;Ljava/lang/Integer;Landroid/graphics/Bitmap;>;"
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 496
    return-void
.end method

.method public downloadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, p1}, Lcom/fusepowered/fuseapi/NetworkService;->openHttpConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 112
    .local v1, "conn":Ljava/net/HttpURLConnection;
    if-eqz v1, :cond_1

    .line 113
    const/4 v3, 0x0

    .line 115
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 116
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 122
    if-eqz v3, :cond_0

    .line 124
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 132
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_1
    return-object v0

    .line 118
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 119
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    const-string v4, "FuseAPI"

    const-string v5, "Error decoding bitmap"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    if-eqz v3, :cond_2

    .line 124
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 129
    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 122
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_3

    .line 124
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 129
    :cond_3
    :goto_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v4

    .line 126
    :catch_1
    move-exception v4

    goto :goto_0

    .restart local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    goto :goto_2

    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    goto :goto_3
.end method

.method public downloadImage2(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 402
    .local v4, "httpClient":Lorg/apache/http/client/HttpClient;
    :try_start_0
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    .local v5, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    :try_start_1
    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 416
    .local v6, "response":Lorg/apache/http/HttpResponse;
    :try_start_2
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    .line 417
    .local v8, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 418
    .local v7, "statusCode":I
    const/16 v9, 0xc8

    if-ne v7, v9, :cond_0

    .line 419
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 420
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v1

    .line 421
    .local v1, "bytes":[B
    const/4 v9, 0x0

    array-length v10, v1

    invoke-static {v1, v9, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 435
    .end local v1    # "bytes":[B
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    :goto_0
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .end local v5    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "statusCode":I
    .end local v8    # "statusLine":Lorg/apache/http/StatusLine;
    :goto_1
    move-object v9, v0

    .line 438
    :goto_2
    return-object v9

    .line 407
    .restart local v5    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_0
    move-exception v2

    .line 408
    .local v2, "e":Lorg/apache/http/client/ClientProtocolException;
    :try_start_3
    const-string v10, "FuseAPI"

    const-string v11, "Error downloading bitmap"

    invoke-static {v10, v11, v2}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 435
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_2

    .line 411
    .end local v2    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v2

    .line 412
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    const-string v10, "FuseAPI"

    const-string v11, "Error downloading bitmap"

    invoke-static {v10, v11, v2}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 435
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_2

    .line 424
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v7    # "statusCode":I
    .restart local v8    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_0
    :try_start_5
    const-string v9, "FuseAPI"

    const-string v10, "Error downloading bitmap -- response code: %d reason: %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 428
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "statusCode":I
    .end local v8    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_2
    move-exception v2

    .line 429
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_6
    const-string v9, "FuseAPI"

    const-string v10, "Error decoding bitmap"

    invoke-static {v9, v10, v2}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 435
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_1

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v9
.end method

.method public sendRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x3e8

    const/4 v10, 0x0

    .line 73
    const-string v7, ""

    .line 74
    .local v7, "response":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/fusepowered/fuseapi/NetworkService;->openHttpConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 75
    .local v3, "conn":Ljava/net/HttpURLConnection;
    if-eqz v3, :cond_3

    .line 76
    const/4 v5, 0x0

    .line 77
    .local v5, "in":Ljava/io/Reader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 79
    .local v0, "buf":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 80
    .end local v5    # "in":Ljava/io/Reader;
    .local v6, "in":Ljava/io/Reader;
    const/4 v2, 0x0

    .line 81
    .local v2, "charsRead":I
    const/16 v8, 0x3e8

    :try_start_1
    new-array v1, v8, [C

    .line 82
    .local v1, "charBuf":[C
    :goto_0
    const/4 v8, 0x0

    const/16 v9, 0x3e8

    invoke-virtual {v6, v1, v8, v9}, Ljava/io/Reader;->read([CII)I

    move-result v2

    const/4 v8, -0x1

    if-le v2, v8, :cond_1

    .line 83
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 87
    .end local v1    # "charBuf":[C
    :catchall_0
    move-exception v8

    move-object v5, v6

    .end local v2    # "charsRead":I
    .end local v6    # "in":Ljava/io/Reader;
    .restart local v5    # "in":Ljava/io/Reader;
    :goto_1
    if-eqz v5, :cond_0

    .line 89
    :try_start_2
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 94
    :cond_0
    :goto_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v8

    .line 87
    .end local v5    # "in":Ljava/io/Reader;
    .restart local v1    # "charBuf":[C
    .restart local v2    # "charsRead":I
    .restart local v6    # "in":Ljava/io/Reader;
    :cond_1
    if-eqz v6, :cond_2

    .line 89
    :try_start_3
    invoke-virtual {v6}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 94
    :cond_2
    :goto_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "encodedText":Ljava/lang/String;
    new-instance v7, Ljava/lang/String;

    .end local v7    # "response":Ljava/lang/String;
    invoke-static {v4, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    .line 102
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "charBuf":[C
    .end local v2    # "charsRead":I
    .end local v4    # "encodedText":Ljava/lang/String;
    .end local v6    # "in":Ljava/io/Reader;
    .restart local v7    # "response":Ljava/lang/String;
    :cond_3
    return-object v7

    .line 91
    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    .restart local v1    # "charBuf":[C
    .restart local v2    # "charsRead":I
    .restart local v6    # "in":Ljava/io/Reader;
    :catch_0
    move-exception v8

    goto :goto_3

    .end local v1    # "charBuf":[C
    .end local v2    # "charsRead":I
    .end local v6    # "in":Ljava/io/Reader;
    .restart local v5    # "in":Ljava/io/Reader;
    :catch_1
    move-exception v9

    goto :goto_2

    .line 87
    :catchall_1
    move-exception v8

    goto :goto_1
.end method

.method public sendRequest(Ljava/lang/String;Lcom/fusepowered/util/ActionType;)Ljava/lang/String;
    .locals 21
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "actionType"    # Lcom/fusepowered/util/ActionType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    .line 315
    .local v7, "encodedJson":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/fusepowered/util/ActionType;->getServerUrlForActionCode(Lcom/fusepowered/util/ActionType;)Ljava/lang/String;

    move-result-object v10

    .line 316
    .local v10, "hostUrl":Ljava/lang/String;
    const/16 v18, 0x3f

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 317
    .local v11, "marker":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-le v11, v0, :cond_2

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 319
    .local v9, "host":Ljava/lang/String;
    :goto_0
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 320
    .local v4, "client":Lorg/apache/http/client/HttpClient;
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v13

    .line 321
    .local v13, "params":Lorg/apache/http/params/HttpParams;
    const v18, 0xea60

    move/from16 v0, v18

    invoke-static {v13, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 322
    const v18, 0x1d4c0

    move/from16 v0, v18

    invoke-static {v13, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 324
    const-string v18, "jimmyjimmyjango"

    const-string v19, "1Qdow7mFZMh7"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/fuseapi/NetworkService;->getB64Auth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 325
    .local v6, "encodedAuthorization":Ljava/lang/String;
    const-string v8, ""

    .line 331
    .local v8, "encodedResponse":Ljava/lang/String;
    :try_start_0
    new-instance v14, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v14, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 332
    .local v14, "post":Lorg/apache/http/client/methods/HttpPost;
    const-string v18, "Authorization"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v18, "Content-Language"

    const-string v19, "en-US"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v18, "User-Agent"

    sget-object v19, Lcom/fusepowered/fuseapi/FuseAPI;->userAgent:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v18, "Accept-Encoding"

    const-string v19, "gzip"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v12, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const-string v19, "api_ver"

    const-string v20, "2.2.0"

    invoke-direct/range {v18 .. v20}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const-string v19, "build"

    const-string v20, "70"

    invoke-direct/range {v18 .. v20}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-direct/range {p0 .. p0}, Lcom/fusepowered/fuseapi/NetworkService;->getAdProviderString()Ljava/lang/String;

    move-result-object v3

    .line 344
    .local v3, "availableAdProviders":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 345
    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const-string v19, "ad_providers"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_0
    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const-string v19, "platform"

    invoke-direct/range {p0 .. p0}, Lcom/fusepowered/fuseapi/NetworkService;->getPlatformString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const-string v19, "d"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    new-instance v15, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-direct {v15, v12, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 354
    .local v15, "reqEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v14, v15}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 357
    new-instance v16, Lorg/apache/http/impl/client/BasicResponseHandler;

    invoke-direct/range {v16 .. v16}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    .line 358
    .local v16, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    move-object/from16 v0, v16

    invoke-interface {v4, v14, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "encodedResponse":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    .restart local v8    # "encodedResponse":Ljava/lang/String;
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 369
    if-nez v8, :cond_1

    .line 371
    const-string v8, ""

    .line 373
    :cond_1
    new-instance v5, Ljava/lang/String;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v8, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    .line 374
    .local v5, "decodedResponse":Ljava/lang/String;
    const/16 v18, 0xa

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v17

    .line 386
    .local v17, "sanitized":Ljava/lang/String;
    return-object v5

    .end local v3    # "availableAdProviders":Ljava/lang/String;
    .end local v4    # "client":Lorg/apache/http/client/HttpClient;
    .end local v5    # "decodedResponse":Ljava/lang/String;
    .end local v6    # "encodedAuthorization":Ljava/lang/String;
    .end local v8    # "encodedResponse":Ljava/lang/String;
    .end local v9    # "host":Ljava/lang/String;
    .end local v12    # "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v13    # "params":Lorg/apache/http/params/HttpParams;
    .end local v14    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v15    # "reqEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v16    # "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    .end local v17    # "sanitized":Ljava/lang/String;
    :cond_2
    move-object v9, v10

    .line 317
    goto/16 :goto_0

    .line 367
    .restart local v4    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v6    # "encodedAuthorization":Ljava/lang/String;
    .restart local v9    # "host":Ljava/lang/String;
    .restart local v13    # "params":Lorg/apache/http/params/HttpParams;
    :catchall_0
    move-exception v18

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v18
.end method
