.class Lcom/fusepowered/ac/ADCData$h;
.super Lcom/fusepowered/ac/ADCData$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ac/ADCData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/fusepowered/ac/ADCData$i;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/fusepowered/ac/af;)V
    .locals 1

    .prologue
    .line 122
    const-string v0, "true"

    invoke-virtual {p1, v0}, Lcom/fusepowered/ac/af;->a(Ljava/lang/String;)V

    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const-string v0, "true"

    return-object v0
.end method

.method d()D
    .locals 2

    .prologue
    .line 119
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method e()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method l()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method
