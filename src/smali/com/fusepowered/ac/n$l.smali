.class Lcom/fusepowered/ac/n$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ac/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "l"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/fusepowered/ac/ADCData$g;)Z
    .locals 1

    .prologue
    .line 1181
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1192
    :goto_0
    return v0

    .line 1183
    :cond_0
    const-string v0, "daily_play_cap"

    invoke-virtual {p1, v0}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/ac/n$l;->a:I

    .line 1184
    const-string v0, "custom_play_cap"

    invoke-virtual {p1, v0}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/ac/n$l;->b:I

    .line 1185
    const-string v0, "custom_play_cap_period"

    invoke-virtual {p1, v0}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/ac/n$l;->c:I

    .line 1186
    const-string v0, "total_play_cap"

    invoke-virtual {p1, v0}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/ac/n$l;->d:I

    .line 1187
    const-string v0, "monthly_play_cap"

    invoke-virtual {p1, v0}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/ac/n$l;->e:I

    .line 1188
    const-string v0, "weekly_play_cap"

    invoke-virtual {p1, v0}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/ac/n$l;->f:I

    .line 1189
    const-string v0, "volatile_expiration"

    invoke-virtual {p1, v0}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/ac/n$l;->g:I

    .line 1190
    const-string v0, "volatile_play_cap"

    invoke-virtual {p1, v0}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/ac/n$l;->h:I

    .line 1192
    const/4 v0, 0x1

    goto :goto_0
.end method
