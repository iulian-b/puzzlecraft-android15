.class public Lcom/fusepowered/l1/AdParams;
.super Ljava/lang/Object;
.source "AdParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/l1/AdParams$1;,
        Lcom/fusepowered/l1/AdParams$AdParamsBuilder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mExpiredDate:I

.field private final mFormat:Ljava/lang/String;

.field private final mHtml:Ljava/lang/String;

.field private final mOrientation:Ljava/lang/String;

.field private final mRefreshTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/fusepowered/l1/AdParams;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/l1/AdParams;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/fusepowered/l1/AdParams$AdParamsBuilder;)V
    .locals 3
    .param p1, "builder"    # Lcom/fusepowered/l1/AdParams$AdParamsBuilder;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1}, Lcom/fusepowered/l1/AdParams$AdParamsBuilder;->access$000(Lcom/fusepowered/l1/AdParams$AdParamsBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/l1/AdParams;->mHtml:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/fusepowered/l1/AdParams$AdParamsBuilder;->access$100(Lcom/fusepowered/l1/AdParams$AdParamsBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/l1/AdParams;->mFormat:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lcom/fusepowered/l1/AdParams$AdParamsBuilder;->access$200(Lcom/fusepowered/l1/AdParams$AdParamsBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/l1/AdParams;->mOrientation:Ljava/lang/String;

    .line 17
    invoke-static {p1}, Lcom/fusepowered/l1/AdParams$AdParamsBuilder;->access$300(Lcom/fusepowered/l1/AdParams$AdParamsBuilder;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/l1/AdParams;->mRefreshTime:I

    .line 18
    invoke-static {p1}, Lcom/fusepowered/l1/AdParams$AdParamsBuilder;->access$400(Lcom/fusepowered/l1/AdParams$AdParamsBuilder;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/l1/AdParams;->mExpiredDate:I

    .line 20
    sget-object v0, Lcom/fusepowered/l1/AdParams;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server response indicates  ad params: format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/l1/AdParams;->mFormat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/l1/AdParams;->mOrientation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", refresh time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/l1/AdParams;->mRefreshTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expire in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/l1/AdParams;->mExpiredDate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/l1/AdParams$AdParamsBuilder;Lcom/fusepowered/l1/AdParams$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fusepowered/l1/AdParams$AdParamsBuilder;
    .param p2, "x1"    # Lcom/fusepowered/l1/AdParams$1;

    .prologue
    .line 3
    invoke-direct {p0, p1}, Lcom/fusepowered/l1/AdParams;-><init>(Lcom/fusepowered/l1/AdParams$AdParamsBuilder;)V

    return-void
.end method


# virtual methods
.method public getAdFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fusepowered/l1/AdParams;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getAdOrientation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fusepowered/l1/AdParams;->mOrientation:Ljava/lang/String;

    return-object v0
.end method

.method public getAdRefreshTime()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/fusepowered/l1/AdParams;->mRefreshTime:I

    return v0
.end method

.method public getExpiredTime()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/fusepowered/l1/AdParams;->mExpiredDate:I

    return v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fusepowered/l1/AdParams;->mHtml:Ljava/lang/String;

    return-object v0
.end method
