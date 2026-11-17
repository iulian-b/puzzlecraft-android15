.class final Lcom/fusepowered/m2/mobileads/util/XmlUtils$3;
.super Ljava/lang/Object;
.source "XmlUtils.java"

# interfaces
.implements Lcom/fusepowered/m2/mobileads/util/XmlUtils$NodeProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/mobileads/util/XmlUtils;->getNodesWithElementAndAttribute(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fusepowered/m2/mobileads/util/XmlUtils$NodeProcessor",
        "<",
        "Lorg/w3c/dom/Node;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic process(Lorg/w3c/dom/Node;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/w3c/dom/Node;

    .prologue
    .line 259
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/mobileads/util/XmlUtils$3;->process(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public process(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 262
    return-object p1
.end method
