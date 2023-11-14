<template>
    <div class="p-8 rounded-lg shadow-md w-[40rem] border-2 border-blue-200">
    <h2 class="text-2xl mb-4 font-bold">Formulário de Inscrição</h2>
    <form id="formStep1" action="https://api.sheetmonkey.io/form/bVAfZidHLq8FZjJTxaEuar" method="post" target="_blank">
      <div id="step1">
        <div class="mb-4">
          <label class="block text-sm font-medium text-gray-700">Nome da Empresa</label>
          <input type="text" name="empresa" class="mt-1 p-2 w-full rounded-md border border-gray-300">
        </div>
        <div class="mb-4">
          <label class="block text-sm font-medium text-gray-700">CNPJ</label>
          <input type="text" name="cnpj" class="mt-1 p-2 w-full rounded-md border border-gray-300">
        </div>
        <div class="mb-4">
          <label class="block text-sm font-medium text-gray-700">Curso</label>
          <select name="curso" class="mt-1 p-2 w-full rounded-md border border-gray-300">
            <option value="curso1">Curso Gestão Tributária de Contratos e Convênios</option>
            <option value="curso2">Curso EFD-REINF e DCTFWeb</option>
            <option value="curso3">Curso Imersão em retenções Tributárias</option>
            <!-- Adicione mais opções de cursos conforme necessário -->
          </select>
        </div>
        <div class="mb-4">
          <label class="block text-sm font-medium text-gray-700">Quantidade de Inscritos</label>
          <input type="number" name="quantidade" id="quantidade" class="mt-1 p-2 w-full rounded-md border border-gray-300">
          <label for="quantidade"></label>
 <select name="quantidade" id="quantidade" class="mt-1 p-2 w-full rounded-md border border-gray-300">
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="5">5</option>
  <option value="10">10</option>
  <option value="25">25</option>
</select> 
        </div>
        <button id="nextButton" class="bg-blue-500 text-white py-2 px-4 rounded-md hover:bg-blue-600">Próximo</button>
      </div>
      <div id="step2" class="hidden">
        <h3 class="text-lg font-medium mb-2">Dados dos Inscritos</h3>
        <div id="inscritosFields"></div>
        <button id="prevButton" class="bg-blue-500 text-white py-2 px-4 rounded-md hover:bg-blue-600">Anterior</button>
        <button id="nextButton2" class="bg-blue-500 text-white py-2 px-4 rounded-md hover:bg-blue-600">Próximo</button>
      </div>
      <button id="submitButton" class="hidden bg-blue-500 text-white py-2 px-4 rounded-md hover:bg-blue-600">Enviar</button>
      <input type="hidden" id="quantidadeHidden" name="quantidadeHidden">
    </form>
  </div>
</template>

<script>
export default {

}
</script>

<style>

</style>