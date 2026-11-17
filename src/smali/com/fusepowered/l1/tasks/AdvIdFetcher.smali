.class public Lcom/fusepowered/l1/tasks/AdvIdFetcher;
.super Ljava/lang/Object;
.source "AdvIdFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/l1/tasks/AdvIdFetcher$Listener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAdvertisingId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/fusepowered/l1/tasks/AdvIdFetcher$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/fusepowered/l1/tasks/AdvIdFetcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/l1/tasks/AdvIdFetcher;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/fusepowered/l1/tasks/AdvIdFetcher$Listener;)V
    .locals 0
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Lcom/fusepowered/l1/tasks/AdvIdFetcher$Listener;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/fusepowered/l1/tasks/AdvIdFetcher;->mContext:Landroid/content/Context;

    .line 28
    iput-object p3, p0, Lcom/fusepowered/l1/tasks/AdvIdFetcher;->mListener:Lcom/fusepowered/l1/tasks/AdvIdFetcher$Listener;

    .line 29
    iput-object p2, p0, Lcom/fusepowered/l1/tasks/AdvIdFetcher;->mHandler:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/l1/tasks/AdvIdFetcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/l1/tasks/AdvIdFetcher;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/fusepowered/l1/tasks/AdvIdFetcher;->mAdvertisingId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fusepowered/l1/tasks/AdvIdFetcher;)Lcom/fusepowered/l1/tasks/AdvIdFetcher$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/l1/tasks/AdvIdFetcher;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/fusepowered/l1/tasks/AdvIdFetcher;->mListener:Lcom/fusepowered/l1/tasks/AdvIdFetcher$Listener;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 34
    sget-object v2, Lcom/fusepowered/l1/tasks/AdvIdFetcher;->LOG_TAG:Ljava/lang/String;

    const-string v3, "started AdvIdFetcher"

    sget-object v4, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v2, v3, v4}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 35
    const-string v2, ""

    iput-object v2, p0, Lcom/fusepowered/l1/tasks/AdvIdFetcher;->mAdvertisingId:Ljava/lang/String;

    .line 37
    :try_start_0
    iget-object v2, p0, Lcom/fusepowered/l1/tasks/AdvIdFetcher;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/fusepowered/l1/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/fusepowered/l1/AdvertisingIdClient$AdInfo;

    move-result-object v0

    .line 38
    .local v0, "adInfo":Lcom/fusepowered/l1/AdvertisingIdClient$AdInfo;
    invoke-virtual {v0}, Lcom/fusepowered/l1/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/l1/tasks/AdvIdFetcher;->mAdvertisingId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v0    # "adInfo":Lcom/fusepowered/l1/AdvertisingIdClient$AdInfo;
    :goto_0
    iget-object v2, p0, Lcom/fusepowered/l1/tasks/AdvIdFetcher;->mListener:Lcom/fusepowered/l1/tasks/AdvIdFetcher$Listener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fusepowered/l1/tasks/AdvIdFetcher;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 44
    iget-object v2, p0, Lcom/fusepowered/l1/tasks/AdvIdFetcher;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/fusepowered/l1/tasks/AdvIdFetcher$1;

    invoke-direct {v3, p0}, Lcom/fusepowered/l1/tasks/AdvIdFetcher$1;-><init>(Lcom/fusepowered/l1/tasks/AdvIdFetcher;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    :cond_0
    return-void

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/fusepowered/l1/tasks/AdvIdFetcher;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/fusepowered/l1/LogLevel;->ERROR:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v2, v3, v4}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    goto :goto_0
.end method
