.class public final enum Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;
.super Ljava/lang/Enum;
.source "UnityAdsDeviceLog.java"


# static fields
.field public static final enum DEBUG:Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;

.field public static final enum ERROR:Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;

.field public static final enum INFO:Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;

.field public static final enum WARNING:Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;

.field private static final synthetic a:[Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;->INFO:Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;

    new-instance v0, Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;->DEBUG:Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;

    new-instance v0, Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v4}, Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;->WARNING:Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;

    new-instance v0, Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;->ERROR:Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;

    sget-object v1, Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;->INFO:Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;->DEBUG:Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;->WARNING:Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;->ERROR:Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;->a:[Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;->a:[Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;

    invoke-virtual {v0}, [Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/u1/UnityAdsDeviceLog$UnityAdsLogLevel;

    return-object v0
.end method
