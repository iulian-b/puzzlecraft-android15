.class Lcom/fusepowered/ac/n$o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ac/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "o"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/fusepowered/ac/ADCData$g;)Z
    .locals 1

    .prologue
    .line 1086
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1094
    :goto_0
    return v0

    .line 1088
    :cond_0
    const-string v0, "enabled"

    invoke-virtual {p1, v0}, Lcom/fusepowered/ac/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fusepowered/ac/n$o;->a:Z

    .line 1089
    const-string v0, "in_app"

    invoke-virtual {p1, v0}, Lcom/fusepowered/ac/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fusepowered/ac/n$o;->b:Z

    .line 1090
    const-string v0, "click_action_type"

    invoke-virtual {p1, v0}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$o;->c:Ljava/lang/String;

    .line 1091
    const-string v0, "click_action"

    invoke-virtual {p1, v0}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$o;->e:Ljava/lang/String;

    .line 1092
    const-string v0, "label"

    invoke-virtual {p1, v0}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$o;->d:Ljava/lang/String;

    .line 1094
    const/4 v0, 0x1

    goto :goto_0
.end method
