.class public Lcom/fusepowered/fuseapi/MessagingService;
.super Ljava/lang/Object;
.source "MessagingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/fuseapi/MessagingService$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MessagingService"

.field private static gameJsonObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static jsonObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static lock:Ljava/lang/Object;

.field private static sessionInitiated:Z

.field static threadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/fuseapi/MessagingService;->threadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/fusepowered/fuseapi/MessagingService;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    return-void
.end method

.method private static addRequestToJsonList(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "commonParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/fusepowered/fuseapi/MessagingService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/fusepowered/fuseapi/MessagingService;->jsonObjects:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/fuseapi/MessagingService;->jsonObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 45
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/fusepowered/fuseapi/MessagingService;->jsonObjects:Ljava/util/ArrayList;

    .line 47
    :cond_1
    sget-object v0, Lcom/fusepowered/fuseapi/MessagingService;->jsonObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 48
    sget-object v0, Lcom/fusepowered/fuseapi/MessagingService;->jsonObjects:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/fusepowered/fuseapi/MessagingService;->mapToJson(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :goto_0
    sget-object v0, Lcom/fusepowered/fuseapi/MessagingService;->gameJsonObjects:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/fusepowered/fuseapi/MessagingService;->gameJsonObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 54
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/fusepowered/fuseapi/MessagingService;->gameJsonObjects:Ljava/util/ArrayList;

    .line 56
    :cond_3
    sget-object v0, Lcom/fusepowered/fuseapi/MessagingService;->gameJsonObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 57
    sget-object v0, Lcom/fusepowered/fuseapi/MessagingService;->gameJsonObjects:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/fusepowered/fuseapi/MessagingService;->mapToJson(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :goto_1
    monitor-exit v1

    .line 62
    return-void

    .line 50
    :cond_4
    sget-object v0, Lcom/fusepowered/fuseapi/MessagingService;->jsonObjects:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/fusepowered/fuseapi/MessagingService;->mapToJson(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 59
    :cond_5
    :try_start_1
    sget-object v0, Lcom/fusepowered/fuseapi/MessagingService;->gameJsonObjects:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/fusepowered/fuseapi/MessagingService;->mapToJson(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static addRequestToJsonList(Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "commonParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/fusepowered/fuseapi/MessagingService;->addRequestToJsonList(Ljava/util/HashMap;)V

    .line 31
    invoke-static {p1}, Lcom/fusepowered/fuseapi/MessagingService;->isData(Ljava/util/HashMap;)Z

    move-result v0

    .line 32
    .local v0, "isData":Z
    sget-object v2, Lcom/fusepowered/fuseapi/MessagingService;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 33
    if-nez v0, :cond_0

    .line 34
    :try_start_0
    sget-object v1, Lcom/fusepowered/fuseapi/MessagingService;->jsonObjects:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/fusepowered/fuseapi/MessagingService;->mapToJson(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :goto_0
    monitor-exit v2

    .line 40
    return-void

    .line 37
    :cond_0
    sget-object v1, Lcom/fusepowered/fuseapi/MessagingService;->gameJsonObjects:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/fusepowered/fuseapi/MessagingService;->mapToJson(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static flush(Lcom/fusepowered/util/ActionType;Lcom/fusepowered/util/FuseCallback;)V
    .locals 11
    .param p0, "actionType"    # Lcom/fusepowered/util/ActionType;
    .param p1, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    const/4 v10, 0x1

    .line 159
    const/4 v2, 0x0

    .line 160
    .local v2, "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    sget-object v8, Lcom/fusepowered/fuseapi/MessagingService;->lock:Ljava/lang/Object;

    monitor-enter v8

    .line 162
    :try_start_0
    sget-object v7, Lcom/fusepowered/fuseapi/MessagingService;->gameJsonObjects:Ljava/util/ArrayList;

    if-eqz v7, :cond_5

    sget-object v7, Lcom/fusepowered/fuseapi/MessagingService;->gameJsonObjects:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v10, :cond_5

    .line 163
    new-instance v3, Lcom/fusepowered/fuseapi/MessagingTask;

    sget-object v7, Lcom/fusepowered/fuseapi/MessagingService;->gameJsonObjects:Ljava/util/ArrayList;

    sget-object v9, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-direct {v3, v7, v9, p0}, Lcom/fusepowered/fuseapi/MessagingTask;-><init>(Ljava/util/ArrayList;Lcom/fusepowered/util/FuseCallback;Lcom/fusepowered/util/ActionType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 164
    .end local v2    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    .local v3, "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    :try_start_1
    sget-object v7, Lcom/fusepowered/fuseapi/MessagingService;->gameJsonObjects:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 165
    sget-object v7, Lcom/fusepowered/fuseapi/MessagingService;->threadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v7, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 168
    :goto_0
    sget-object v7, Lcom/fusepowered/fuseapi/MessagingService;->jsonObjects:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    sget-object v7, Lcom/fusepowered/fuseapi/MessagingService;->jsonObjects:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v10, :cond_4

    .line 170
    sget-object v7, Lcom/fusepowered/fuseapi/MessagingService;->jsonObjects:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    .line 172
    .local v5, "x":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/json/JSONObject;>;"
    const/4 v1, -0x1

    .line 174
    .local v1, "indexOfStartSession":I
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 175
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    .local v6, "y":Lorg/json/JSONObject;
    :try_start_2
    const-string v7, "session_id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 178
    const-string v7, "session_id"

    sget-object v9, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v9}, Lcom/fusepowered/util/ResponseValues;->getSessionId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    :cond_1
    :goto_2
    :try_start_3
    const-string v7, "action"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "0"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 186
    sget-object v7, Lcom/fusepowered/fuseapi/MessagingService;->jsonObjects:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    goto :goto_1

    .line 179
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Lorg/json/JSONException;
    :try_start_4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 201
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "indexOfStartSession":I
    .end local v5    # "x":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/json/JSONObject;>;"
    .end local v6    # "y":Lorg/json/JSONObject;
    :catchall_0
    move-exception v7

    move-object v2, v3

    .end local v3    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    .restart local v2    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    :goto_3
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v7

    .line 191
    .end local v2    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    .restart local v1    # "indexOfStartSession":I
    .restart local v3    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    .restart local v5    # "x":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/json/JSONObject;>;"
    :cond_2
    const/4 v7, 0x2

    if-lt v1, v7, :cond_3

    .line 192
    :try_start_6
    sget-object v7, Lcom/fusepowered/fuseapi/MessagingService;->jsonObjects:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 193
    .local v4, "startSessionObject":Lorg/json/JSONObject;
    sget-object v7, Lcom/fusepowered/fuseapi/MessagingService;->jsonObjects:Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-virtual {v7, v9, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 197
    .end local v4    # "startSessionObject":Lorg/json/JSONObject;
    :cond_3
    new-instance v2, Lcom/fusepowered/fuseapi/MessagingTask;

    sget-object v7, Lcom/fusepowered/fuseapi/MessagingService;->jsonObjects:Ljava/util/ArrayList;

    sget-object v9, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-direct {v2, v7, v9, p0}, Lcom/fusepowered/fuseapi/MessagingTask;-><init>(Ljava/util/ArrayList;Lcom/fusepowered/util/FuseCallback;Lcom/fusepowered/util/ActionType;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 198
    .end local v3    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    .restart local v2    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    :try_start_7
    sget-object v7, Lcom/fusepowered/fuseapi/MessagingService;->jsonObjects:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 199
    sget-object v7, Lcom/fusepowered/fuseapi/MessagingService;->threadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v7, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 201
    .end local v1    # "indexOfStartSession":I
    .end local v5    # "x":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/json/JSONObject;>;"
    :goto_4
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 203
    return-void

    .line 201
    :catchall_1
    move-exception v7

    goto :goto_3

    .line 188
    .end local v2    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    .restart local v1    # "indexOfStartSession":I
    .restart local v3    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    .restart local v5    # "x":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/json/JSONObject;>;"
    .restart local v6    # "y":Lorg/json/JSONObject;
    :catch_1
    move-exception v7

    goto :goto_1

    .end local v1    # "indexOfStartSession":I
    .end local v5    # "x":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/json/JSONObject;>;"
    .end local v6    # "y":Lorg/json/JSONObject;
    :cond_4
    move-object v2, v3

    .end local v3    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    .restart local v2    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    goto :goto_4

    :cond_5
    move-object v3, v2

    .end local v2    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    .restart local v3    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    goto :goto_0
.end method

.method private static getRequestActionType(Ljava/util/HashMap;)Lcom/fusepowered/util/ActionType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/util/ActionType;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 88
    .local v0, "actionType":Lcom/fusepowered/util/ActionType;
    const-string v1, "action"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const-string v1, "action"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/fusepowered/util/ActionType;->getActionTypeByCode(I)Lcom/fusepowered/util/ActionType;

    move-result-object v0

    .line 91
    :cond_0
    return-object v0
.end method

.method private static getRequestActionType(Lorg/json/JSONObject;)Lcom/fusepowered/util/ActionType;
    .locals 5
    .param p0, "params"    # Lorg/json/JSONObject;

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "actionType":Lcom/fusepowered/util/ActionType;
    const-string v3, "action"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    :try_start_0
    const-string v3, "action"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 99
    .local v2, "param":Ljava/lang/Object;
    check-cast v2, Ljava/lang/String;

    .end local v2    # "param":Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/fusepowered/util/ActionType;->getActionTypeByCode(I)Lcom/fusepowered/util/ActionType;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 105
    :cond_0
    :goto_0
    return-object v0

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "jse":Lorg/json/JSONException;
    const-string v3, "MessagingService"

    const-string v4, "Unexpected exception"

    invoke-static {v3, v4, v1}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static isData(Ljava/util/HashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/fusepowered/fuseapi/MessagingService;->getRequestActionType(Ljava/util/HashMap;)Lcom/fusepowered/util/ActionType;

    move-result-object v0

    .line 83
    .local v0, "actionType":Lcom/fusepowered/util/ActionType;
    invoke-static {v0}, Lcom/fusepowered/util/ActionType;->isDataAction(Lcom/fusepowered/util/ActionType;)Z

    move-result v1

    return v1
.end method

.method private static isSessionInitiated(Ljava/util/HashMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "commonParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "session_id"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "session_id"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/fuseapi/MessagingService;->sessionInitiated:Z

    .line 114
    :cond_0
    sget-boolean v0, Lcom/fusepowered/fuseapi/MessagingService;->sessionInitiated:Z

    return v0
.end method

.method private static isTimeToFlush(Lcom/fusepowered/util/ActionType;Z)Z
    .locals 5
    .param p0, "actionType"    # Lcom/fusepowered/util/ActionType;
    .param p1, "isSessionInitiated"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 207
    sget-object v3, Lcom/fusepowered/fuseapi/MessagingService$1;->$SwitchMap$com$fusepowered$util$ActionType:[I

    invoke-virtual {p0}, Lcom/fusepowered/util/ActionType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 218
    if-nez p1, :cond_1

    .line 219
    sput-boolean v2, Lcom/fusepowered/fuseapi/MessagingService;->sessionInitiated:Z

    move v1, v2

    .line 245
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 222
    :cond_1
    sget-boolean v3, Lcom/fusepowered/fuseapi/MessagingService;->sessionInitiated:Z

    if-nez v3, :cond_2

    .line 223
    sput-boolean v1, Lcom/fusepowered/fuseapi/MessagingService;->sessionInitiated:Z

    goto :goto_0

    .line 227
    :cond_2
    invoke-static {p0}, Lcom/fusepowered/util/ActionType;->isDataAction(Lcom/fusepowered/util/ActionType;)Z

    move-result v0

    .line 228
    .local v0, "isData":Z
    if-nez v0, :cond_0

    sget-object v3, Lcom/fusepowered/fuseapi/MessagingService;->jsonObjects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    .line 232
    sget-object v3, Lcom/fusepowered/fuseapi/MessagingService$1;->$SwitchMap$com$fusepowered$util$ActionType:[I

    invoke-virtual {p0}, Lcom/fusepowered/util/ActionType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    move v1, v2

    .line 245
    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 232
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static mapToJson(Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;*>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 69
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 71
    .local v3, "k":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 72
    .local v4, "v":Ljava/lang/Object;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "k":Ljava/lang/String;
    .end local v4    # "v":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "FuseAPI"

    const-string v6, "mapToJson JSONException"

    invoke-static {v5, v6, v0}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    return-object v2

    .line 72
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "k":Ljava/lang/String;
    .restart local v4    # "v":Ljava/lang/Object;
    :cond_1
    :try_start_1
    const-string v5, ""
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V
    .locals 1
    .param p2, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/util/FuseCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "commonParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;Z)V

    .line 119
    return-void
.end method

.method public static sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;Z)V
    .locals 4
    .param p2, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;
    .param p3, "doSendNow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/util/FuseCallback;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "commonParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/fusepowered/fuseapi/MessagingService;->addRequestToJsonList(Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 123
    if-eqz p3, :cond_0

    .line 124
    invoke-static {p1}, Lcom/fusepowered/fuseapi/MessagingService;->getRequestActionType(Ljava/util/HashMap;)Lcom/fusepowered/util/ActionType;

    move-result-object v0

    .line 125
    .local v0, "actionType":Lcom/fusepowered/util/ActionType;
    invoke-static {p0}, Lcom/fusepowered/fuseapi/MessagingService;->isSessionInitiated(Ljava/util/HashMap;)Z

    move-result v1

    .line 126
    .local v1, "isSessionInitiated":Z
    invoke-static {v0, v1}, Lcom/fusepowered/fuseapi/MessagingService;->isTimeToFlush(Lcom/fusepowered/util/ActionType;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    sget-object v3, Lcom/fusepowered/fuseapi/MessagingService;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 128
    :try_start_0
    invoke-static {v0, p2}, Lcom/fusepowered/fuseapi/MessagingService;->flush(Lcom/fusepowered/util/ActionType;Lcom/fusepowered/util/FuseCallback;)V

    .line 129
    monitor-exit v3

    .line 132
    .end local v0    # "actionType":Lcom/fusepowered/util/ActionType;
    .end local v1    # "isSessionInitiated":Z
    :cond_0
    return-void

    .line 129
    .restart local v0    # "actionType":Lcom/fusepowered/util/ActionType;
    .restart local v1    # "isSessionInitiated":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static sendJsonMessage(Ljava/util/HashMap;Lorg/json/JSONObject;Lcom/fusepowered/util/FuseCallback;Z)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;
    .param p3, "doSendNow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "Lcom/fusepowered/util/FuseCallback;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "commonParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/fusepowered/fuseapi/MessagingService;->addRequestToJsonList(Ljava/util/HashMap;)V

    .line 136
    sget-object v2, Lcom/fusepowered/fuseapi/MessagingService;->gameJsonObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    if-eqz p3, :cond_0

    .line 138
    invoke-static {p1}, Lcom/fusepowered/fuseapi/MessagingService;->getRequestActionType(Lorg/json/JSONObject;)Lcom/fusepowered/util/ActionType;

    move-result-object v0

    .line 139
    .local v0, "actionType":Lcom/fusepowered/util/ActionType;
    invoke-static {p0}, Lcom/fusepowered/fuseapi/MessagingService;->isSessionInitiated(Ljava/util/HashMap;)Z

    move-result v1

    .line 140
    .local v1, "isSessionInitiated":Z
    invoke-static {v0, v1}, Lcom/fusepowered/fuseapi/MessagingService;->isTimeToFlush(Lcom/fusepowered/util/ActionType;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    sget-object v3, Lcom/fusepowered/fuseapi/MessagingService;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 142
    :try_start_0
    invoke-static {v0, p2}, Lcom/fusepowered/fuseapi/MessagingService;->flush(Lcom/fusepowered/util/ActionType;Lcom/fusepowered/util/FuseCallback;)V

    .line 143
    monitor-exit v3

    .line 146
    .end local v0    # "actionType":Lcom/fusepowered/util/ActionType;
    .end local v1    # "isSessionInitiated":Z
    :cond_0
    return-void

    .line 143
    .restart local v0    # "actionType":Lcom/fusepowered/util/ActionType;
    .restart local v1    # "isSessionInitiated":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static declared-synchronized sendSyncJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V
    .locals 7
    .param p2, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/util/FuseCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "commonParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v3, Lcom/fusepowered/fuseapi/MessagingService;

    monitor-enter v3

    :try_start_0
    invoke-static {p0, p1}, Lcom/fusepowered/fuseapi/MessagingService;->addRequestToJsonList(Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    sget-object v4, Lcom/fusepowered/fuseapi/MessagingService;->lock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 152
    :try_start_1
    new-instance v1, Lcom/fusepowered/fuseapi/MessagingTask;

    sget-object v2, Lcom/fusepowered/fuseapi/MessagingService;->jsonObjects:Ljava/util/ArrayList;

    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {p1}, Lcom/fusepowered/fuseapi/MessagingService;->getRequestActionType(Ljava/util/HashMap;)Lcom/fusepowered/util/ActionType;

    move-result-object v6

    invoke-direct {v1, v2, v5, v6}, Lcom/fusepowered/fuseapi/MessagingTask;-><init>(Ljava/util/ArrayList;Lcom/fusepowered/util/FuseCallback;Lcom/fusepowered/util/ActionType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    .end local v0    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    .local v1, "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    :try_start_2
    sget-object v2, Lcom/fusepowered/fuseapi/MessagingService;->jsonObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 154
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 155
    :try_start_3
    invoke-virtual {v1}, Lcom/fusepowered/fuseapi/MessagingTask;->sendJsonMessage()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 156
    monitor-exit v3

    return-void

    .line 154
    .end local v1    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    .restart local v0    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    :catchall_0
    move-exception v2

    :goto_0
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 149
    .end local v0    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 154
    .restart local v1    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    :catchall_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    .restart local v0    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    goto :goto_0
.end method
