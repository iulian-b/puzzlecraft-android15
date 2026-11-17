.class final Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters$27;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/fusepowered/nx/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;->newFactory(Lcom/fusepowered/nx/gson/reflect/TypeToken;Lcom/fusepowered/nx/gson/TypeAdapter;)Lcom/fusepowered/nx/gson/TypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$type:Lcom/fusepowered/nx/gson/reflect/TypeToken;

.field final synthetic val$typeAdapter:Lcom/fusepowered/nx/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/gson/reflect/TypeToken;Lcom/fusepowered/nx/gson/TypeAdapter;)V
    .locals 0

    .prologue
    .line 765
    iput-object p1, p0, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters$27;->val$type:Lcom/fusepowered/nx/gson/reflect/TypeToken;

    iput-object p2, p0, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters$27;->val$typeAdapter:Lcom/fusepowered/nx/gson/TypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/fusepowered/nx/gson/Gson;Lcom/fusepowered/nx/gson/reflect/TypeToken;)Lcom/fusepowered/nx/gson/TypeAdapter;
    .locals 1
    .param p1, "gson"    # Lcom/fusepowered/nx/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fusepowered/nx/gson/Gson;",
            "Lcom/fusepowered/nx/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/fusepowered/nx/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 768
    .local p2, "typeToken":Lcom/fusepowered/nx/gson/reflect/TypeToken;, "Lcom/fusepowered/nx/gson/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters$27;->val$type:Lcom/fusepowered/nx/gson/reflect/TypeToken;

    invoke-virtual {p2, v0}, Lcom/fusepowered/nx/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters$27;->val$typeAdapter:Lcom/fusepowered/nx/gson/TypeAdapter;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
