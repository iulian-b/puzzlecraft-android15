.class public Lcom/fusepowered/nx/common/NetworkConnectionManager;
.super Ljava/lang/Object;
.source "NetworkConnectionManager.java"


# static fields
.field private static context:Landroid/content/Context;

.field private static instance:Lcom/fusepowered/nx/common/NetworkConnectionManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/fusepowered/nx/common/NetworkConnectionManager;->context:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to initialize NetworkConnectionManager"

    invoke-static {v1, v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/fusepowered/nx/common/NetworkConnectionManager;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/fusepowered/nx/common/NetworkConnectionManager;->instance:Lcom/fusepowered/nx/common/NetworkConnectionManager;

    if-nez v0, :cond_1

    .line 55
    sget-object v0, Lcom/fusepowered/nx/common/NetworkConnectionManager;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/fusepowered/nx/common/NetworkConnectionManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusepowered/nx/common/NetworkConnectionManager;->getInstance(Landroid/content/Context;)Lcom/fusepowered/nx/common/NetworkConnectionManager;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    .line 58
    :cond_0
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/nx/common/NetworkConnectionManager;->getInstance(Landroid/content/Context;)Lcom/fusepowered/nx/common/NetworkConnectionManager;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_1
    sget-object v0, Lcom/fusepowered/nx/common/NetworkConnectionManager;->instance:Lcom/fusepowered/nx/common/NetworkConnectionManager;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/fusepowered/nx/common/NetworkConnectionManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    sget-object v0, Lcom/fusepowered/nx/common/NetworkConnectionManager;->instance:Lcom/fusepowered/nx/common/NetworkConnectionManager;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/fusepowered/nx/common/NetworkConnectionManager;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/common/NetworkConnectionManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fusepowered/nx/common/NetworkConnectionManager;->instance:Lcom/fusepowered/nx/common/NetworkConnectionManager;

    .line 50
    :cond_0
    sget-object v0, Lcom/fusepowered/nx/common/NetworkConnectionManager;->instance:Lcom/fusepowered/nx/common/NetworkConnectionManager;

    return-object v0
.end method

.method private isConnectionFast(II)Z
    .locals 2
    .param p1, "type"    # I
    .param p2, "subType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    if-ne p1, v0, :cond_0

    .line 132
    :goto_0
    :pswitch_0
    return v0

    .line 109
    :cond_0
    if-nez p1, :cond_1

    .line 110
    packed-switch p2, :pswitch_data_0

    move v0, v1

    .line 129
    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 116
    goto :goto_0

    :cond_1
    move v0, v1

    .line 132
    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 176
    sput-object v0, Lcom/fusepowered/nx/common/NetworkConnectionManager;->instance:Lcom/fusepowered/nx/common/NetworkConnectionManager;

    .line 177
    sput-object v0, Lcom/fusepowered/nx/common/NetworkConnectionManager;->context:Landroid/content/Context;

    .line 178
    return-void
.end method


# virtual methods
.method public checkWifiAccessPermissions()Z
    .locals 2

    .prologue
    .line 165
    sget-object v0, Lcom/fusepowered/nx/common/NetworkConnectionManager;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "Permission ACCESS_WIFI_STATE is unavailable."

    invoke-static {v0}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 167
    const-string v0, "Unable to access MAC Address."

    invoke-static {v0}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 168
    const/4 v0, 0x0

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 5

    .prologue
    .line 140
    const/4 v2, 0x0

    .line 143
    .local v2, "isConnected":Z
    :try_start_0
    sget-object v3, Lcom/fusepowered/nx/common/NetworkConnectionManager;->context:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 145
    .local v0, "connectionMgr":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 146
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    const/4 v2, 0x1

    .line 158
    .end local v0    # "connectionMgr":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return v2

    .line 150
    .restart local v0    # "connectionMgr":Landroid/net/ConnectivityManager;
    :cond_1
    const-string v3, "The connection manager is not currently available."

    invoke-static {v3}, Lcom/fusepowered/nx/common/Log;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    .end local v0    # "connectionMgr":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Exception caught in NetworkCommunicationManager.isConnected() "

    invoke-static {v3, v1}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    const-string v3, "The connection manager is not currently available.  Unable to establish a network connection."

    invoke-static {v3}, Lcom/fusepowered/nx/common/Log;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isConnectedFast()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 92
    :try_start_0
    sget-object v4, Lcom/fusepowered/nx/common/NetworkConnectionManager;->context:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 93
    .local v0, "conMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 94
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/fusepowered/nx/common/NetworkConnectionManager;->isConnectionFast(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 97
    .end local v0    # "conMgr":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v3

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Exception caught in NetworkCommunicationManager.isConnectedFast() "

    invoke-static {v4}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method isConnectedToCellular()Z
    .locals 6

    .prologue
    .line 73
    const/4 v2, 0x0

    .line 75
    .local v2, "isCellular":Z
    :try_start_0
    sget-object v4, Lcom/fusepowered/nx/common/NetworkConnectionManager;->context:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 76
    .local v0, "conMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 77
    .local v3, "nInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 78
    const/4 v2, 0x1

    .line 83
    .end local v0    # "conMgr":Landroid/net/ConnectivityManager;
    .end local v3    # "nInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v2

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught in DeviceData in isCellular Module:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isOnWiFi()Z
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/nx/common/NetworkConnectionManager;->getInstance(Landroid/content/Context;)Lcom/fusepowered/nx/common/NetworkConnectionManager;

    move-result-object v0

    .line 66
    .local v0, "ncm":Lcom/fusepowered/nx/common/NetworkConnectionManager;
    invoke-virtual {v0}, Lcom/fusepowered/nx/common/NetworkConnectionManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/fusepowered/nx/common/NetworkConnectionManager;->isConnectedToCellular()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    const/4 v1, 0x1

    .line 69
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
