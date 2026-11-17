.class Lcom/fusepowered/as/controller/AdManager$4;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Lcom/fusepowered/as/controller/listener/AdFactoryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/as/controller/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/controller/AdManager;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/controller/AdManager;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/fusepowered/as/controller/AdManager$4;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adBuildFailed(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad build failed, attempting to fail over"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager$4;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-static {v0}, Lcom/fusepowered/as/controller/AdManager;->access$600(Lcom/fusepowered/as/controller/AdManager;)V

    .line 196
    return-void
.end method

.method public adBuilt(Lcom/fusepowered/as/model/ad/ProviderAd;)V
    .locals 3

    .prologue
    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad build successfully with type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/fusepowered/as/model/ad/ProviderAd;->getAdType()Lcom/fusepowered/as/model/ad/AdType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager$4;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-static {v0, p1}, Lcom/fusepowered/as/controller/AdManager;->access$502(Lcom/fusepowered/as/controller/AdManager;Lcom/fusepowered/as/model/ad/ProviderAd;)Lcom/fusepowered/as/model/ad/ProviderAd;

    .line 189
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager$4;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-static {v0}, Lcom/fusepowered/as/controller/AdManager;->access$800(Lcom/fusepowered/as/controller/AdManager;)V

    .line 190
    return-void
.end method
