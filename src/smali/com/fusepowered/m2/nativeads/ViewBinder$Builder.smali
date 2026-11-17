.class public final Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;
.super Ljava/lang/Object;
.source "ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/nativeads/ViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private callToActionId:I

.field private extras:Ljava/util/Map;
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

.field private iconImageId:I

.field private final layoutId:I

.field private mainImageId:I

.field private textId:I

.field private titleId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "layoutId"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;->extras:Ljava/util/Map;

    .line 20
    iput p1, p0, Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;->layoutId:I

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;->extras:Ljava/util/Map;

    .line 22
    return-void
.end method

.method static synthetic access$100(Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;

    .prologue
    .line 10
    iget v0, p0, Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;->layoutId:I

    return v0
.end method

.method static synthetic access$200(Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;

    .prologue
    .line 10
    iget v0, p0, Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;->titleId:I

    return v0
.end method

.method static synthetic access$300(Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;

    .prologue
    .line 10
    iget v0, p0, Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;->textId:I

    return v0
.end method

.method static synthetic access$400(Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;

    .prologue
    .line 10
    iget v0, p0, Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;->callToActionId:I

    return v0
.end method

.method static synthetic access$500(Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;

    .prologue
    .line 10
    iget v0, p0, Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;->mainImageId:I

    return v0
.end method

.method static synthetic access$600(Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;

    .prologue
    .line 10
    iget v0, p0, Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;->iconImageId:I

    return v0
.end method

.method static synthetic access$700(Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;->extras:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final addExtra(Ljava/lang/String;I)Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "resourceId"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;->extras:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-object p0
.end method

.method public final addExtras(Ljava/util/Map;)Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "resourceIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;->extras:Ljava/util/Map;

    .line 57
    return-object p0
.end method

.method public final build()Lcom/fusepowered/m2/nativeads/ViewBinder;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/fusepowered/m2/nativeads/ViewBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/m2/nativeads/ViewBinder;-><init>(Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;Lcom/fusepowered/m2/nativeads/ViewBinder$1;)V

    return-object v0
.end method

.method public final callToActionId(I)Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;
    .locals 0
    .param p1, "callToActionId"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 38
    iput p1, p0, Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;->callToActionId:I

    .line 39
    return-object p0
.end method

.method public final iconImageId(I)Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;
    .locals 0
    .param p1, "iconImageId"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 50
    iput p1, p0, Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;->iconImageId:I

    .line 51
    return-object p0
.end method

.method public final mainImageId(I)Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;
    .locals 0
    .param p1, "mainImageId"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 44
    iput p1, p0, Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;->mainImageId:I

    .line 45
    return-object p0
.end method

.method public final textId(I)Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;
    .locals 0
    .param p1, "textId"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    iput p1, p0, Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;->textId:I

    .line 33
    return-object p0
.end method

.method public final titleId(I)Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;
    .locals 0
    .param p1, "titleId"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 26
    iput p1, p0, Lcom/fusepowered/m2/nativeads/ViewBinder$Builder;->titleId:I

    .line 27
    return-object p0
.end method
