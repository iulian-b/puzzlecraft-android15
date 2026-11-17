.class final Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters$22;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/fusepowered/nx/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/fusepowered/nx/gson/Gson;Lcom/fusepowered/nx/gson/reflect/TypeToken;)Lcom/fusepowered/nx/gson/TypeAdapter;
    .locals 3
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
    .line 519
    .local p2, "typeToken":Lcom/fusepowered/nx/gson/reflect/TypeToken;, "Lcom/fusepowered/nx/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lcom/fusepowered/nx/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/sql/Timestamp;

    if-eq v1, v2, :cond_0

    .line 520
    const/4 v1, 0x0

    .line 524
    :goto_0
    return-object v1

    .line 523
    :cond_0
    const-class v1, Ljava/util/Date;

    invoke-virtual {p1, v1}, Lcom/fusepowered/nx/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/fusepowered/nx/gson/TypeAdapter;

    move-result-object v0

    .line 524
    .local v0, "dateTypeAdapter":Lcom/fusepowered/nx/gson/TypeAdapter;, "Lcom/fusepowered/nx/gson/TypeAdapter<Ljava/util/Date;>;"
    new-instance v1, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters$22$1;

    invoke-direct {v1, p0, v0}, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters$22$1;-><init>(Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters$22;Lcom/fusepowered/nx/gson/TypeAdapter;)V

    goto :goto_0
.end method
