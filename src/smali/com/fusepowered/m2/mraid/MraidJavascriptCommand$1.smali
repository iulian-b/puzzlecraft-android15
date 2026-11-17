.class final enum Lcom/fusepowered/m2/mraid/MraidJavascriptCommand$1;
.super Lcom/fusepowered/m2/mraid/MraidJavascriptCommand;
.source "MraidJavascriptCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/mraid/MraidJavascriptCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fusepowered/m2/mraid/MraidJavascriptCommand;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/fusepowered/m2/mraid/MraidJavascriptCommand$1;)V

    return-void
.end method


# virtual methods
.method requiresClick(Lcom/fusepowered/m2/mraid/PlacementType;)Z
    .locals 1
    .param p1, "placementType"    # Lcom/fusepowered/m2/mraid/PlacementType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 10
    sget-object v0, Lcom/fusepowered/m2/mraid/PlacementType;->INLINE:Lcom/fusepowered/m2/mraid/PlacementType;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
