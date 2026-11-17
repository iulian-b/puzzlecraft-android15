.class Lcom/fusepowered/ac/n$w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ac/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "w"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/fusepowered/ac/ADCData$g;)Z
    .locals 1

    .prologue
    .line 1324
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1330
    :goto_0
    return v0

    .line 1326
    :cond_0
    const-string v0, "daily_play_cap"

    invoke-virtual {p1, v0}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/ac/n$w;->a:I

    .line 1327
    const-string v0, "custom_play_cap"

    invoke-virtual {p1, v0}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/ac/n$w;->b:I

    .line 1328
    const-string v0, "custom_play_cap_period"

    invoke-virtual {p1, v0}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/ac/n$w;->c:I

    .line 1330
    const/4 v0, 0x1

    goto :goto_0
.end method
