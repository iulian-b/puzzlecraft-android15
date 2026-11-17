.class public Lcom/fusepowered/nx/monetization/manager/ManagementService;
.super Ljava/lang/Object;
.source "ManagementService.java"


# static fields
.field private static instance:Lcom/fusepowered/nx/monetization/manager/ManagementService;


# instance fields
.field private dialogManager:Lcom/fusepowered/nx/monetization/manager/DialogManager;

.field private sharedDataManager:Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/manager/ManagementService;->dialogManager:Lcom/fusepowered/nx/monetization/manager/DialogManager;

    .line 36
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/manager/ManagementService;->sharedDataManager:Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;

    .line 42
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/fusepowered/nx/monetization/manager/ManagementService;
    .locals 2

    .prologue
    .line 67
    const-class v1, Lcom/fusepowered/nx/monetization/manager/ManagementService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/ManagementService;->instance:Lcom/fusepowered/nx/monetization/manager/ManagementService;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/fusepowered/nx/monetization/manager/ManagementService;

    invoke-direct {v0}, Lcom/fusepowered/nx/monetization/manager/ManagementService;-><init>()V

    sput-object v0, Lcom/fusepowered/nx/monetization/manager/ManagementService;->instance:Lcom/fusepowered/nx/monetization/manager/ManagementService;

    .line 71
    :cond_0
    sget-object v0, Lcom/fusepowered/nx/monetization/manager/ManagementService;->instance:Lcom/fusepowered/nx/monetization/manager/ManagementService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/DialogManager;->release()V

    .line 76
    invoke-static {}, Lcom/fusepowered/nx/common/DeviceManager;->release()V

    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/nx/monetization/manager/ManagementService;->instance:Lcom/fusepowered/nx/monetization/manager/ManagementService;

    .line 78
    return-void
.end method


# virtual methods
.method public getDialogManager()Lcom/fusepowered/nx/monetization/manager/DialogManager;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/manager/ManagementService;->dialogManager:Lcom/fusepowered/nx/monetization/manager/DialogManager;

    return-object v0
.end method

.method public getMonetizationSharedDataManager()Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/manager/ManagementService;->sharedDataManager:Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;

    return-object v0
.end method

.method public setDialogManager(Lcom/fusepowered/nx/monetization/manager/DialogManager;)V
    .locals 0
    .param p1, "dialogManager"    # Lcom/fusepowered/nx/monetization/manager/DialogManager;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/manager/ManagementService;->dialogManager:Lcom/fusepowered/nx/monetization/manager/DialogManager;

    .line 53
    return-void
.end method

.method public setMonetizationSharedDataManager(Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;)V
    .locals 0
    .param p1, "sharedDataManager"    # Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/manager/ManagementService;->sharedDataManager:Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;

    .line 62
    return-void
.end method
