.class Lcom/crashlytics/android/LogFileManager;
.super Ljava/lang/Object;
.source "LogFileManager.java"


# static fields
.field static final MAX_LOG_SIZE:I = 0x10000


# instance fields
.field private final context:Landroid/content/Context;

.field private final filesDir:Ljava/io/File;

.field private logFile:Lio/fabric/sdk/android/services/common/QueueFile;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filesDir"    # Ljava/io/File;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/crashlytics/android/LogFileManager;-><init>(Landroid/content/Context;Ljava/io/File;Lio/fabric/sdk/android/services/common/QueueFile;)V

    .line 30
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/io/File;Lio/fabric/sdk/android/services/common/QueueFile;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filesDir"    # Ljava/io/File;
    .param p3, "logFile"    # Lio/fabric/sdk/android/services/common/QueueFile;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/crashlytics/android/LogFileManager;->context:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/crashlytics/android/LogFileManager;->filesDir:Ljava/io/File;

    .line 36
    iput-object p3, p0, Lcom/crashlytics/android/LogFileManager;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    .line 37
    return-void
.end method

.method private initLogFile()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 63
    iget-object v7, p0, Lcom/crashlytics/android/LogFileManager;->context:Landroid/content/Context;

    const-string v8, "com.crashlytics.CollectCustomLogs"

    invoke-static {v7, v8, v6}, Lio/fabric/sdk/android/services/common/CommonUtils;->getBooleanResourceValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 67
    .local v0, "collectLogs":Z
    if-nez v0, :cond_0

    .line 68
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v6

    const-string v7, "Fabric"

    const-string v8, "Preferences requested no custom logs. Aborting log file creation."

    invoke-interface {v6, v7, v8}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :goto_0
    return v5

    .line 74
    :cond_0
    iget-object v7, p0, Lcom/crashlytics/android/LogFileManager;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not close log file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/crashlytics/android/LogFileManager;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 76
    const/4 v2, 0x0

    .line 87
    .local v2, "f":Ljava/io/File;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "crashlytics-userlog-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".temp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "filename":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/crashlytics/android/LogFileManager;->filesDir:Ljava/io/File;

    invoke-direct {v3, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v2    # "f":Ljava/io/File;
    .local v3, "f":Ljava/io/File;
    :try_start_1
    new-instance v7, Lio/fabric/sdk/android/services/common/QueueFile;

    invoke-direct {v7, v3}, Lio/fabric/sdk/android/services/common/QueueFile;-><init>(Ljava/io/File;)V

    iput-object v7, p0, Lcom/crashlytics/android/LogFileManager;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    .line 90
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v5, v6

    .line 96
    goto :goto_0

    .line 91
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "filename":Ljava/lang/String;
    .restart local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v6

    const-string v7, "Fabric"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not create log file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 91
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "f":Ljava/io/File;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "filename":Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "f":Ljava/io/File;
    .restart local v2    # "f":Ljava/io/File;
    goto :goto_1
.end method


# virtual methods
.method closeLogFile()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/crashlytics/android/LogFileManager;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    const-string v1, "There was a problem closing the Crashlytics log file."

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crashlytics/android/LogFileManager;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    .line 186
    return-void
.end method

.method doWriteToLog(IJLjava/lang/String;)V
    .locals 8
    .param p1, "maxLogSize"    # I
    .param p2, "timestamp"    # J
    .param p4, "msg"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v3, p0, Lcom/crashlytics/android/LogFileManager;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    if-nez v3, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    if-nez p4, :cond_2

    .line 107
    const-string p4, "null"

    .line 127
    :cond_2
    :try_start_0
    div-int/lit8 v2, p1, 0x4

    .line 129
    .local v2, "quarterMaxLogSize":I
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_3

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p4, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 133
    :cond_3
    const-string v3, "\r"

    const-string v4, " "

    invoke-virtual {p4, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 134
    const-string v3, "\n"

    const-string v4, " "

    invoke-virtual {p4, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 136
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%d %s%n"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p4, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 139
    .local v1, "msgBytes":[B
    iget-object v3, p0, Lcom/crashlytics/android/LogFileManager;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    invoke-virtual {v3, v1}, Lio/fabric/sdk/android/services/common/QueueFile;->add([B)V

    .line 142
    :goto_1
    iget-object v3, p0, Lcom/crashlytics/android/LogFileManager;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    invoke-virtual {v3}, Lio/fabric/sdk/android/services/common/QueueFile;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/crashlytics/android/LogFileManager;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    invoke-virtual {v3}, Lio/fabric/sdk/android/services/common/QueueFile;->usedBytes()I

    move-result v3

    if-le v3, p1, :cond_0

    .line 143
    iget-object v3, p0, Lcom/crashlytics/android/LogFileManager;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    invoke-virtual {v3}, Lio/fabric/sdk/android/services/common/QueueFile;->remove()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 145
    .end local v1    # "msgBytes":[B
    .end local v2    # "quarterMaxLogSize":I
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string v4, "Fabric"

    const-string v5, "There was a problem writing to the Crashlytics log."

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method getByteStringForLog()Lcom/crashlytics/android/ByteString;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 152
    iget-object v3, p0, Lcom/crashlytics/android/LogFileManager;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    if-nez v3, :cond_0

    .line 153
    const/4 v3, 0x0

    .line 180
    :goto_0
    return-object v3

    .line 159
    :cond_0
    const/4 v3, 0x1

    new-array v2, v3, [I

    aput v6, v2, v6

    .line 161
    .local v2, "offsetHolder":[I
    iget-object v3, p0, Lcom/crashlytics/android/LogFileManager;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    invoke-virtual {v3}, Lio/fabric/sdk/android/services/common/QueueFile;->usedBytes()I

    move-result v3

    new-array v1, v3, [B

    .line 164
    .local v1, "logBytes":[B
    :try_start_0
    iget-object v3, p0, Lcom/crashlytics/android/LogFileManager;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    new-instance v4, Lcom/crashlytics/android/LogFileManager$1;

    invoke-direct {v4, p0, v1, v2}, Lcom/crashlytics/android/LogFileManager$1;-><init>(Lcom/crashlytics/android/LogFileManager;[B[I)V

    invoke-virtual {v3, v4}, Lio/fabric/sdk/android/services/common/QueueFile;->forEach(Lio/fabric/sdk/android/services/common/QueueFile$ElementReader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_1
    aget v3, v2, v6

    invoke-static {v1, v6, v3}, Lcom/crashlytics/android/ByteString;->copyFrom([BII)Lcom/crashlytics/android/ByteString;

    move-result-object v3

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string v4, "Fabric"

    const-string v5, "A problem occurred while reading the Crashlytics log file."

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public writeToLog(JLjava/lang/String;)V
    .locals 1
    .param p1, "timestamp"    # J
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/crashlytics/android/LogFileManager;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    if-nez v0, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/crashlytics/android/LogFileManager;->initLogFile()Z

    .line 46
    :cond_0
    const/high16 v0, 0x10000

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/crashlytics/android/LogFileManager;->doWriteToLog(IJLjava/lang/String;)V

    .line 47
    return-void
.end method
