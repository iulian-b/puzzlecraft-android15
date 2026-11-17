.class Lcom/fusepowered/as/controller/AdManager$2$1;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Lcom/fusepowered/as/model/fallback/ProxyFallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/controller/AdManager$2;->onExpand(Ljava/util/Properties;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fusepowered/as/controller/AdManager$2;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/controller/AdManager$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/fusepowered/as/controller/AdManager$2$1;->this$1:Lcom/fusepowered/as/controller/AdManager$2;

    iput-object p2, p0, Lcom/fusepowered/as/controller/AdManager$2$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdType()Lcom/fusepowered/as/model/ad/AdType;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/fusepowered/as/model/ad/AdType;->EXPANDED_MRAID:Lcom/fusepowered/as/model/ad/AdType;

    return-object v0
.end method

.method public getFallBackUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager$2$1;->val$url:Ljava/lang/String;

    return-object v0
.end method
