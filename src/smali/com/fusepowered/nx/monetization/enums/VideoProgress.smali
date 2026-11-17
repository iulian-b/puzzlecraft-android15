.class public final enum Lcom/fusepowered/nx/monetization/enums/VideoProgress;
.super Ljava/lang/Enum;
.source "VideoProgress.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/nx/monetization/enums/VideoProgress;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/nx/monetization/enums/VideoProgress;

.field public static final enum VIDEO_PROGRESS_25_PERCENT:Lcom/fusepowered/nx/monetization/enums/VideoProgress;

.field public static final enum VIDEO_PROGRESS_50_PERCENT:Lcom/fusepowered/nx/monetization/enums/VideoProgress;

.field public static final enum VIDEO_PROGRESS_75_PERCENT:Lcom/fusepowered/nx/monetization/enums/VideoProgress;

.field public static final enum VIDEO_PROGRESS_COMPLETED:Lcom/fusepowered/nx/monetization/enums/VideoProgress;

.field public static final enum VIDEO_PROGRESS_STARTED:Lcom/fusepowered/nx/monetization/enums/VideoProgress;


# instance fields
.field private final mPercentage:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/fusepowered/nx/monetization/enums/VideoProgress;

    const-string v1, "VIDEO_PROGRESS_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/fusepowered/nx/monetization/enums/VideoProgress;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/fusepowered/nx/monetization/enums/VideoProgress;->VIDEO_PROGRESS_STARTED:Lcom/fusepowered/nx/monetization/enums/VideoProgress;

    .line 13
    new-instance v0, Lcom/fusepowered/nx/monetization/enums/VideoProgress;

    const-string v1, "VIDEO_PROGRESS_25_PERCENT"

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-direct {v0, v1, v4, v2}, Lcom/fusepowered/nx/monetization/enums/VideoProgress;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/fusepowered/nx/monetization/enums/VideoProgress;->VIDEO_PROGRESS_25_PERCENT:Lcom/fusepowered/nx/monetization/enums/VideoProgress;

    .line 14
    new-instance v0, Lcom/fusepowered/nx/monetization/enums/VideoProgress;

    const-string v1, "VIDEO_PROGRESS_50_PERCENT"

    const/high16 v2, 0x42480000    # 50.0f

    invoke-direct {v0, v1, v5, v2}, Lcom/fusepowered/nx/monetization/enums/VideoProgress;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/fusepowered/nx/monetization/enums/VideoProgress;->VIDEO_PROGRESS_50_PERCENT:Lcom/fusepowered/nx/monetization/enums/VideoProgress;

    .line 15
    new-instance v0, Lcom/fusepowered/nx/monetization/enums/VideoProgress;

    const-string v1, "VIDEO_PROGRESS_75_PERCENT"

    const/high16 v2, 0x42960000    # 75.0f

    invoke-direct {v0, v1, v6, v2}, Lcom/fusepowered/nx/monetization/enums/VideoProgress;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/fusepowered/nx/monetization/enums/VideoProgress;->VIDEO_PROGRESS_75_PERCENT:Lcom/fusepowered/nx/monetization/enums/VideoProgress;

    .line 16
    new-instance v0, Lcom/fusepowered/nx/monetization/enums/VideoProgress;

    const-string v1, "VIDEO_PROGRESS_COMPLETED"

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v0, v1, v7, v2}, Lcom/fusepowered/nx/monetization/enums/VideoProgress;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/fusepowered/nx/monetization/enums/VideoProgress;->VIDEO_PROGRESS_COMPLETED:Lcom/fusepowered/nx/monetization/enums/VideoProgress;

    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fusepowered/nx/monetization/enums/VideoProgress;

    sget-object v1, Lcom/fusepowered/nx/monetization/enums/VideoProgress;->VIDEO_PROGRESS_STARTED:Lcom/fusepowered/nx/monetization/enums/VideoProgress;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/nx/monetization/enums/VideoProgress;->VIDEO_PROGRESS_25_PERCENT:Lcom/fusepowered/nx/monetization/enums/VideoProgress;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/nx/monetization/enums/VideoProgress;->VIDEO_PROGRESS_50_PERCENT:Lcom/fusepowered/nx/monetization/enums/VideoProgress;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fusepowered/nx/monetization/enums/VideoProgress;->VIDEO_PROGRESS_75_PERCENT:Lcom/fusepowered/nx/monetization/enums/VideoProgress;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fusepowered/nx/monetization/enums/VideoProgress;->VIDEO_PROGRESS_COMPLETED:Lcom/fusepowered/nx/monetization/enums/VideoProgress;

    aput-object v1, v0, v7

    sput-object v0, Lcom/fusepowered/nx/monetization/enums/VideoProgress;->$VALUES:[Lcom/fusepowered/nx/monetization/enums/VideoProgress;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .param p3, "percentage"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/fusepowered/nx/monetization/enums/VideoProgress;->mPercentage:F

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/enums/VideoProgress;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/fusepowered/nx/monetization/enums/VideoProgress;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/monetization/enums/VideoProgress;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/nx/monetization/enums/VideoProgress;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/fusepowered/nx/monetization/enums/VideoProgress;->$VALUES:[Lcom/fusepowered/nx/monetization/enums/VideoProgress;

    invoke-virtual {v0}, [Lcom/fusepowered/nx/monetization/enums/VideoProgress;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/nx/monetization/enums/VideoProgress;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/fusepowered/nx/monetization/enums/VideoProgress;->mPercentage:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
