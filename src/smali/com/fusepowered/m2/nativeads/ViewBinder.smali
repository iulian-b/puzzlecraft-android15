.class public Lcom/fusepowered/m2/nativeads/ViewBinder;
.super Ljava/lang/Object;
.source "ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/nativeads/ViewBinder$1;,
        Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;
    }
.end annotation


# instance fields
.field final callToActionId:I

.field final extras:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final iconImageId:I

.field final layoutId:I

.field final mainImageId:I

.field final textId:I

.field final titleId:I


# direct methods
.method private constructor <init>(Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {p1}, Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;->access$100(Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/m2/nativeads/ViewBinder;->layoutId:I

    .line 82
    invoke-static {p1}, Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;->access$200(Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/m2/nativeads/ViewBinder;->titleId:I

    .line 83
    invoke-static {p1}, Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;->access$300(Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/m2/nativeads/ViewBinder;->textId:I

    .line 84
    invoke-static {p1}, Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;->access$400(Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/m2/nativeads/ViewBinder;->callToActionId:I

    .line 85
    invoke-static {p1}, Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;->access$500(Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/m2/nativeads/ViewBinder;->mainImageId:I

    .line 86
    invoke-static {p1}, Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;->access$600(Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/m2/nativeads/ViewBinder;->iconImageId:I

    .line 87
    invoke-static {p1}, Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;->access$700(Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/ViewBinder;->extras:Ljava/util/Map;

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;Lcom/fusepowered/m2/nativeads/ViewBinder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;
    .param p2, "x1"    # Lcom/fusepowered/m2/nativeads/ViewBinder$1;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/nativeads/ViewBinder;-><init>(Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;)V

    return-void
.end method
