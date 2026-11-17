.class final Lcom/fusepowered/debug/FuseBridgeHandler$3;
.super Ljava/util/HashMap;
.source "FuseBridgeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/debug/FuseBridgeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Class",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 639
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 640
    const-string v0, "int"

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    const-string v0, "long"

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    const-string v0, "double"

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    const-string v0, "float"

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    const-string v0, "boolean"

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    const-string v0, "bool"

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    const-string v0, "char"

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    const-string v0, "byte"

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    const-string v0, "void"

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    const-string v0, "short"

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    const-string v0, "string"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    const-string v0, "Integer"

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    const-string v0, "Long"

    const-class v1, Ljava/lang/Long;

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    const-string v0, "Double"

    const-class v1, Ljava/lang/Double;

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    const-string v0, "Float"

    const-class v1, Ljava/lang/Float;

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    const-string v0, "Boolean"

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    const-string v0, "Character"

    const-class v1, Ljava/lang/Character;

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    const-string v0, "Byte"

    const-class v1, Ljava/lang/Byte;

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    const-string v0, "Void"

    const-class v1, Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    const-string v0, "Short"

    const-class v1, Ljava/lang/Short;

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    const-string v0, "String"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    const-string v0, "HashMap"

    const-class v1, Ljava/util/HashMap;

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    const-string v0, "ArrayList"

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    const-string v0, "VerifiedPurchase"

    const-class v1, Lcom/fusepowered/util/VerifiedPurchase;

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    const-string v0, "Gender"

    const-class v1, Lcom/fusepowered/util/Gender;

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    const-string v0, "Gendar"

    const-class v1, Lcom/fusepowered/util/Gender;

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    return-void
.end method
