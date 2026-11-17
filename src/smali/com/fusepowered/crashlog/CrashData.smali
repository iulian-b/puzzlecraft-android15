.class public Lcom/fusepowered/crashlog/CrashData;
.super Ljava/lang/Object;
.source "CrashData.java"


# static fields
.field private static final JSON_CRASH_ID:Ljava/lang/String; = "id"

.field private static final JSON_CRASH_TIME:Ljava/lang/String; = "crashTime"

.field private static final JSON_LOG_HISTORY:Ljava/lang/String; = "logHistory"

.field private static final JSON_STACK_TRACE:Ljava/lang/String; = "stackTrace"

.field private static final JSON_THREAD_NAME:Ljava/lang/String; = "threadName"

.field private static final JSON_THREAD_STATE:Ljava/lang/String; = "threadState"

.field private static final TAG:Ljava/lang/String; = "CrashData"


# instance fields
.field private final mCrashId:Ljava/lang/String;

.field private mCrashTime:J

.field private mCrashedThreadName:Ljava/lang/String;

.field private mCrashedThreadState:Ljava/lang/String;

.field private mLogs:[Ljava/lang/String;

.field private mStackTrace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fusepowered/crashlog/CrashData;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/fusepowered/crashlog/CrashData;->mCrashId:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/fusepowered/crashlog/CrashData;
    .locals 14
    .param p0, "crashJson"    # Ljava/lang/String;

    .prologue
    .line 109
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 111
    .local v5, "jsonObject":Lorg/json/JSONObject;
    const-string v11, "id"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "crashId":Ljava/lang/String;
    const-string v11, "stackTrace"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 113
    .local v8, "stackTrace":Ljava/lang/String;
    const-string v11, "threadName"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 114
    .local v9, "threadName":Ljava/lang/String;
    const-string v11, "threadState"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 115
    .local v10, "threadState":Ljava/lang/String;
    const-string v11, "crashTime"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "crashTimeStr":Ljava/lang/String;
    const-string v11, "logHistory"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 117
    .local v7, "logHistoryJSON":Lorg/json/JSONArray;
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v11

    new-array v6, v11, [Ljava/lang/String;

    .line 118
    .local v6, "logHistory":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v4, v11, :cond_0

    .line 119
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v4

    .line 118
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 122
    :cond_0
    new-instance v0, Lcom/fusepowered/crashlog/CrashData;

    invoke-direct {v0, v1}, Lcom/fusepowered/crashlog/CrashData;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "crashData":Lcom/fusepowered/crashlog/CrashData;
    invoke-virtual {v0, v8}, Lcom/fusepowered/crashlog/CrashData;->setStackTrace(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, v9}, Lcom/fusepowered/crashlog/CrashData;->setCrashedThreadName(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0, v10}, Lcom/fusepowered/crashlog/CrashData;->setCrashedThreadState(Ljava/lang/String;)V

    .line 126
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Lcom/fusepowered/crashlog/CrashData;->setCrashTime(J)V

    .line 127
    invoke-virtual {v0, v6}, Lcom/fusepowered/crashlog/CrashData;->setLogs([Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v0    # "crashData":Lcom/fusepowered/crashlog/CrashData;
    .end local v1    # "crashId":Ljava/lang/String;
    .end local v2    # "crashTimeStr":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "logHistory":[Ljava/lang/String;
    .end local v7    # "logHistoryJSON":Lorg/json/JSONArray;
    .end local v8    # "stackTrace":Ljava/lang/String;
    .end local v9    # "threadName":Ljava/lang/String;
    .end local v10    # "threadState":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 131
    :catch_0
    move-exception v3

    .line 132
    .local v3, "e":Lorg/json/JSONException;
    const-string v11, "CrashData"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not parse crash json: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getCrashId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fusepowered/crashlog/CrashData;->mCrashId:Ljava/lang/String;

    return-object v0
.end method

.method public getCrashTime()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/fusepowered/crashlog/CrashData;->mCrashTime:J

    return-wide v0
.end method

.method public getCrashedThreadName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fusepowered/crashlog/CrashData;->mCrashedThreadName:Ljava/lang/String;

    return-object v0
.end method

.method public getCrashedThreadState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fusepowered/crashlog/CrashData;->mCrashedThreadState:Ljava/lang/String;

    return-object v0
.end method

.method public getLogs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fusepowered/crashlog/CrashData;->mLogs:[Ljava/lang/String;

    return-object v0
.end method

.method public getStackTrace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fusepowered/crashlog/CrashData;->mStackTrace:Ljava/lang/String;

    return-object v0
.end method

.method public setCrashTime(J)V
    .locals 1
    .param p1, "epochTime"    # J

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/fusepowered/crashlog/CrashData;->mCrashTime:J

    return-void
.end method

.method public setCrashedThreadName(Ljava/lang/String;)V
    .locals 0
    .param p1, "crashedThreadName"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/fusepowered/crashlog/CrashData;->mCrashedThreadName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setCrashedThreadState(Ljava/lang/String;)V
    .locals 0
    .param p1, "crashedThreadState"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/fusepowered/crashlog/CrashData;->mCrashedThreadState:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setLogs([Ljava/lang/String;)V
    .locals 0
    .param p1, "logs"    # [Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/fusepowered/crashlog/CrashData;->mLogs:[Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setStackTrace(Ljava/lang/String;)V
    .locals 0
    .param p1, "stackTrace"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/fusepowered/crashlog/CrashData;->mStackTrace:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 12

    .prologue
    .line 82
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "id"

    iget-object v9, p0, Lcom/fusepowered/crashlog/CrashData;->mCrashId:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v8, "stackTrace"

    iget-object v9, p0, Lcom/fusepowered/crashlog/CrashData;->mStackTrace:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v8, "threadName"

    iget-object v9, p0, Lcom/fusepowered/crashlog/CrashData;->mCrashedThreadName:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v8, "threadState"

    iget-object v9, p0, Lcom/fusepowered/crashlog/CrashData;->mCrashedThreadState:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v8, "crashTime"

    iget-wide v10, p0, Lcom/fusepowered/crashlog/CrashData;->mCrashTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 89
    .local v5, "logs":Lorg/json/JSONArray;
    iget-object v0, p0, Lcom/fusepowered/crashlog/CrashData;->mLogs:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 90
    .local v4, "log":Ljava/lang/String;
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v4    # "log":Ljava/lang/String;
    :cond_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 94
    .local v7, "root":Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "logHistory"

    invoke-virtual {v7, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
